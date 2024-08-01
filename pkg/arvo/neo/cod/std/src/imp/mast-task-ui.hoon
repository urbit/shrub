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
    manx/!>((render (task-map bowl)))
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
            !>([%new [text | | ~] %.y])
        ==
      ::
          [%click %checkbox * ~]
        =/  inner  (oust [0 2] (pave:neo path.event))
        =/  =idea:neo  (~(got of:neo lore) inner)
        =/  t  !<(task q.pail.idea)
        :_  pail
        :~  :-  (welp here inner)
            :+  %poke
              %task-diff
            !>([%edit text.t !done.t])
        ==
      ::
          [%click %move-up ~]
        =/  key  (pave:neo (stab (~(got by data.event) '/target/data-key')))
        =/  undex  (find ~[key] order.state)
        ?~  undex  ~|(%cant-find-it-bro !!)
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
          [%click %delete * ~]
        =/  =pith:neo  (oust [0 2] (pave:neo path.event))
        :_  pail
        :~  :-  here
            :+  %poke
              %task-diff
            !>([%oust pith])
        ==
        ::
          [%input %task-text ~]
        =/  task-id  (~(got by data.event) '/target/data-key')
        =/  text=@t  (~(got by data.event) '/target/value')
        =/  pith  (pave:neo (stab task-id))
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
      ~&  'rellyyyy'
      :-  ~
      manx/!>((render (task-map bowl)))
    ==
  --
--
::
|%
++  render
  |_  tasks=(map pith task)
  ++  $
    ^-  manx
    ;html
      ;head
        ;meta(charset "utf-8");
        ;style: {(trip feather)}
      ==
      ;body
        =style  "margin: 0; width: 100%; display: grid; place-items: center;"
        ;main
          ;h1: Tasks
          ;div
            ;p: {(trip text:(~(got by tasks) /))}
          ==
          ;+  task-form
          ;+  subtasks
        ==
      ==
    ==
  ::
  ++  task-form
    ^-  manx
    ;form
      =mast-after-swap  "this.reset()"
      =event  "/submit/new-task"
      ;textarea
        =name  "task-input"
        =style  "height: 10rem; width: 25rem; margin-block: 1rem;"
        =autocomplete  "off";
      ;button
        ; Enter
      ==
    ==
  ::
  ++  subtasks
    ^-  manx
    ;div#top
    =style  all-tasks-st
      ;*
      ~&  [%render-order order:(~(got by tasks) /)]
          %+  turn  order:(~(got by tasks) /)
          |=  =pith
          =/  task  (~(got by tasks) pith)
          =/  key  (en-tape:pith:neo pith)
          ;div
            =style  task-st
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
              =return  "/target/data-key"
              =event  "/click/move-up"
              ; up
            ==
            ;button.p2.br1.bd1
              =data-key  key
              =return  "/target/data-key"
              =event  "/click/move-down"
              ; down
            ==
          ::
            ;div.fr.g2
            ;+
              =;  m
                ?:  done.task
                  m(a.g [[%checked ""] a.g.m])
                m
              ^-  manx
              ;input
                =id     "task-checkbox"
                =type   "checkbox"
                =name   "done"
                =event  (welp "/click/checkbox" key)
                ;
              ==
              ;div
                ;button
                  =type  "submit"
                  =name  "oust"
                  =event  (welp "/click/delete" key)
                ;  X
                ==
              ==
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
++  all-tasks-st  "display: flex; flex-direction: column; gap: 6px;"
::
++  task-st
  ^~
  %-  trip
  '''
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  border: 1px solid black;
  padding:8px;
  '''
::
++  buttons-st  "display: flex; flex-direction: row; gap: 4px;"
--
