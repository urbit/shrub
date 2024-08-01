/@  ui-event
/@  task
/@  task-diff
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
      :+  ~  %y
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
          [%click %delete * ~]
        =/  =pith:neo  (oust [0 2] (pave:neo path.event))
        :_  pail
        :~  :-  here
            :+  %poke
              %task-diff
            !>([%oust pith])
        ==
        ::
          [%change %task-text * ~]       
        =/  =pith:neo  (oust [0 2] (pave:neo path.event))
        =/  task-id  (en-cord:pith:neo (welp pith /value))
        =/  text=@t  (~(got by data.event) task-id)
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
      =event  "/submit/new-task"
      ;textarea(name "task-input", style "height: 10rem; width: 25rem; margin-block: 1rem;");
      ;button: Enter
    ==
  ::
  ++  subtasks
    ^-  manx
    ;div
    =style  all-tasks-st
      ;*  
      ~&  order:(~(got by tasks) /)
          %+  turn  order:(~(got by tasks) /)
          |=  =pith
          =/  task  (~(got by tasks) pith)
          =/  key  (en-tape:pith:neo pith)
          ;div
          =style  task-st
              ;input
              =id  (tail key)
              =style  "border: none;"
              =type   "text"
              =value  (trip text.task)
              =return  (welp key "/value")
              =event  (welp "/change/task-text" key)
              ;
              ==
          ::
            ;div
            =style  buttons-st
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
