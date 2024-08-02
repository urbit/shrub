/@  ui-event
/@  task
/@  task-diff
/*  feather
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely %gift ~)
++  kids
  *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :-  %src
      :-  req=&
      :-  [pro/%task (sy %task-diff %gift ~)]
      :+  ~  %z
      %-  my
      :~  [[|/%ud |] pro/%task (sy %task-diff %gift ~)]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    manx/!>((render (task-map bowl) p:(~(got by deps.bowl) %src)))
  ::
  ++  poke
    |=  [=stud:neo =vase]
    ^-  (quip card:neo pail:neo)
    ~&  >>  stud
    =/  state  (task-obj bowl)
    ?+    stud  ~|(bad-stud/stud !!)
    ::
        %ui-event
      =/  event  !<(ui-event vase)
      =/  here=pith:neo  p:(~(got by deps.bowl) %src)
      =/  =lore:neo  q:(~(got by deps.bowl) %src)
      ~&  >>  path.event
      ?+    path.event
        ~|(missing-event-handler-for/path.event !!)
      ::
          [%submit %new-task ~]
        ~&  data.event
        =/  text=@t
          (~(got by data.event) 'task-input')
        :_  pail
        :~  :-  here
            :+  %poke
              %task-diff
            !>([%new [text | & ~] %.y])
        ==
      ::
          [%click %checkbox ~]
        ~&  p:(~(got by deps.bowl) %src)
        =/  key  (got-key data.event)
        =/  =idea:neo  (~(got of:neo lore) key)
        =/  t  !<(task q.pail.idea)
        :_  pail
        :~  :-  (welp here key)
            :+  %poke
              %task-diff
            !>([%edit text.t !done.t])
        ==
      ::
          [%click %move-up ~]
        =/  key  (got-key data.event)
        ?~  undex=(find ~[key] order.state)
          ~|(%cant-find-it-bro !!)
        =/  index  u.undex
        ?:  =(0 index)
        [~ pail]
        ::
        =/  without  (oust [index 1] order.state)
        =/  new-order  (into without (dec index) key)
        ~&  new-order/new-order
        :_  pail
        :~
          :-  here
          :+  %poke
            %task-diff
          !>([%reorder new-order])
        ==
      ::
          [%click %move-down ~]
        =/  key  (got-key data.event)
        ?~  undex=(find ~[key] order.state)
          ~|(%cant-find-it-bro !!)
        =/  index  u.undex
        ?:  =((dec (lent order.state)) index)
        [~ pail]
        ::
        =/  without  (oust [index 1] order.state)
        =/  new-order  (into without +(index) key)
        :_  pail
        :~
          :-  here
          :+  %poke
            %task-diff
          !>([%reorder new-order])
        ==
      ::
          [%click %delete ~]
        =/  key  (got-key data.event)
        :_  pail
        :~  :-  here
            :+  %poke
              %task-diff
            !>([%oust key])
        ==
        ::
          [%input %task-text ~]
        =/  text=@t  (~(got by data.event) '/target/value')
        =/  pith  (got-key data.event)
        =/  =idea:neo  (~(got of:neo lore) pith)
        =/  t  !<(task q.pail.idea)
        :_  pail
        :~  :-  (welp here pith)
            :+  %poke
              %task-diff
            !>([%edit text done.t])
        ==
      ==
    ::
        %rely
      :-  ~
      manx/!>((render (task-map bowl) p:(~(got by deps.bowl) %src)))
    ==
  --
--
::
|%
++  render
  |_  [tasks=(map pith task) here=pith:neo]
  ++  $
    ^-  manx
    ;html
      ;head
        ;meta(charset "utf-8");
        ;style: {(trip feather)}
        :: ;script
        :: ;+  ;/
        :: """
        :: const sharedStyles = new CSSStyleSheet();
        :: sharedStyles.replaceSync(`{(trip feather)}`);
        :: document.adoptedStyleSheets = [sharedStyles];
        :: """
        :: ==
      ==
      ;body
        =style  "margin: 0; width: 100%; display: grid; place-items: center;"
        ;main
          ;h1.p2: Tasks
          ;div
            ;p.p2.s1: {(trip text:(~(got by tasks) /))}
          ==
          ;+  task-form
          ;+  subtasks
        ==
      ==
    ==
  ::
  ++  task-form
    ^-  manx
    ;form.fr.g1
      =mast-after-swap  "this.reset()"
      =event  "/submit/new-task"
      ::;textarea
      ;input.p2.bd1.br1.grow
        =name  "task-input"
        =style  "width: 25rem;"
        ::=style  "height: 10rem; width: 25rem; margin-block: 1rem;"
        =placeholder  "new task"
        =autocomplete  "off";
      ;button.p2.b1.bd1.br1
        ; create
      ==
    ==
  ::
  ++  subtasks
    ^-  manx
    ;div.fc.g2
    =id  "top"
      ;*
      ~&  [%render-order order:(~(got by tasks) /)]
          %+  turn  order:(~(got by tasks) /)
          |=  =pith
          =/  task  (~(got by tasks) pith)
          =/  key  (en-tape:pith:neo pith)
          ;div.fr.jb.p2.br1.bd1
            ;div.fr.ac.g1
            ;+
              =;  m
                ?:  done.task
                  m(a.g [[%checked ""] a.g.m])
                m
              ^-  manx
              ;input
                =id        "task-checkbox"
                =type      "checkbox"
                =data-key  key
                =return    "/target/data-key"
                =name      "done"
                =event     "/click/checkbox"
                ;
              ==
            ==
            ;input.bd0
              =id  (tail key)
              =type   "text"
              =data-key  key
              =autocomplete  "off"
              =value  (trip text.task)
              =return  "/target/data-key /target/value"
              =event  "/input/task-text"
              ;
            ==
            ;button.p2.br1.bd1
              =data-key  key
              =return    "/target/data-key"
              =event     "/click/move-down"
              ; ↓
            ==
            ;button.p2.br1.bd1
              =data-key  key
              =return    "/target/data-key"
              =event     "/click/move-up"
              ; ↑
            ==
          ::
            ;button.p2.br1.bd1
              =type      "submit"
              =name      "oust"
              =data-key  key
              =return    "/target/data-key"
              =event     "/click/delete"
              ;span:  X
            ==
            ;+  
              =/  to-kid=tape
                ;:  welp  "/mast/mast-task-ui"
                %-  en-tape:pith:neo 
                here
                key
                ==
              ^-  manx
              ;a.p2.br1.f0
                =style  "text-decoration: none !important;"
                =href  to-kid
                ;span.b1.br1.hfc:  →
              ==
          ==
    ==
  --
::
++  task-map
  |=  =bowl:neo
  ^-  (map pith task)
  %-  malt
  %+  turn
    %~  tap
      of:neo
    q:(~(got by deps.bowl) %src)
  |=  [=pith =idea:neo]
  :-  pith
  !<(task q.pail.idea)
::
++  task-obj
  |=  =bowl:neo
  ^-  task
  !<  task
  q.pail:(~(got of:neo q:(~(got by deps.bowl) %src)) /)
::
++  got-key
  |=  data=(map @t @t)
  ^-  pith:neo
  %-  pave:neo 
  %-  stab 
  (~(got by data) '/target/data-key')
::
--
