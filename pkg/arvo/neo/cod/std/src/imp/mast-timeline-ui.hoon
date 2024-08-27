/@  ui-event
/@  timeline-diff
/-  serv=sky-server
/-  su=shrub-utils
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event ~)
++  kids
  *kids:neo
++  deps
  %-  ~(gas by *band:neo)
  :~  :-  %src
      :-  req=&
      :-  [pro/%timeline (sy %timeline-diff ~)]
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  [|/%p |]
          [[%only %sig] ~]
          :-  [|/%p |/%da |]
          [[%only %post] ~]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  =lore:neo  q:(~(got by deps.bowl) %src)
    :-  ~
    manx/!>((render lore))
  ::
  ++  poke
    |=  [=stud:neo =vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%ui-event stud)
    [~ pail]
  --
--
::
|%
++  render
  |_  =lore:neo
  ++  $
    ^-  manx
    ;html
      ;head
        ;*  old-standard-head-tags:serv
        ;*  standard-head-tags:serv
      ==
      ;body
        ;+  options
        ;+  feed
      ==
    ==
  ::
  ++  options
  ;div
    ;button 
      ;span:  all
    ==
    ;button 
      ;span:  followed
    ==
    ;button 
      ;span:  published
    ==
  ==
  ::
  ++  feed 
  ;div
    ;*
    %+  turn  (get-all-feed-entries lore)
    |=  =pith:neo
    ::(got-vase-saga-by-pith:su lore pith)
    =/  idea=idea:neo  (~(got of:neo lore) pith)
    =/  post  !<(pith:neo q.q.saga:idea)
    ;p:  {(en-tape:pith:neo post)}
  ==
  ::
  --
::
++  get-all-feed-entries 
  |=  =lore:neo
  ^-  (list pith)
  =/  grandkids=(list pith)
    %+  skim  (kidz-at-pith:su / lore)
    |=  =pith
    (gth (lent pith) 1)
  %+  sort  grandkids
  |=  [a=pith b=pith]
    (gth ->:(tail a) ->:(tail b))
::
--