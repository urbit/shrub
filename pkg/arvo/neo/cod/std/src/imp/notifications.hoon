/@  json
/@  notification
/@  notifications-config
/@  notifications-controller
^-  kook:neo
=>
::
::  helper core
|%
++  has-pith-in
  |=  [piths=(set pith) query=pith]
  ^-  ?
  %-  ~(any in piths)
  |=  =pith
  ^-  ?
  =(query (scag (lent query) pith))
--
::
::  main core
|%
++  state
  ^-  curb:neo
  [%pro %notifications-controller]
::
++  poke
  ^-  (set stud:neo)
  (sy %json %notification ~)
::
++  kids
  ^-  kids:neo
  %-  some
  :-  %y
  %-  ~(gas by *lads:neo)
  :~  :-  [[%.y %notification] [%.n %da] %.n]
      [[%pro %notification] ~]
      :-  [[%.y %config] [%.n %tas] %.n]
      [[%pro %notifications-config] ~]
      :-  [[%.y %endpoints] [%.n %t] %.n]
      [[%pro %json] ~]
  ==
::
++  deps
  *deps:neo
::
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(notifications-controller state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?^  old
        [~ u.old]
      :_  [%notifications-controller !>(|=(notification #/config/default))]
      :~  :-  (welp here.bowl ~[%config %default])
          :*  %make
              %notifications-config
              `[%notifications-config !>(*notifications-config)]
              ~
          ==
      ==
    ::
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(ship.src.bowl our.bowl)
      ?+      stud
            !!
          %notifications-controller
        [~ [%notifications-controller vaz]]
      ::
      ::  XX should sanity-check json
          %json
        :_  [%notifications-controller !>(state)]
        =/  cred  !<(json vaz)
        ?~  cred
          ~
        ::  XX parse expirationTime
        =/  endpoint
          %.  cred
          (ot ~[endpoint+so]):dejs:format
        ::  XX handle expirationTime with behn?
        ::       remove this endpoint when the timer fires
        :~  :-  (welp here.bowl ~[%endpoint t/endpoint])
            [%make %json `[%json !>(cred)] ~]
        ==
      ::
          %notification
        =/  not  !<(notification vaz)
        ?<  =('' cord.not)
        ?<  (gth time.not now.bowl)
        ?>  =(pith.src.bowl (tail src.not))
        =/  config
          !<  notifications-config
          q.pail:(need (~(get by ~(tar of:neo kids.bowl)) (state not)))
        :_  [%notifications-controller !>(state)]
        ?:  (has-pith-in kill.config src.not)
          ~
        ?:  (has-pith-in mute.config src.not)
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
          ==
        ?:  (has-pith-in buzz.config src.not)
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
              ::  XX send push notifications to subscribers
          ==
        ?.  flag.not
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
          ==
        :~  :-  (welp here.bowl ~[[da/now.bowl]])
            [%make %notification `[%notification !>(not)] ~]
            ::  XX send push notifications to subscribers
        ==
      ==
  --
--
