/@  txt
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
  (sy %txt %notification ~)
::
++  kids
  ^-  kids:neo
  %-  some
  :-  %y
  %-  ~(gas by *lads:neo)
  :~  :-  [[%.n %da] %.n]
      [[%pro %notification] ~]
      :-  [[%.n %tas] %.n]
      [[%pro %notifications-config] ~]
      :-  [[%.n %t] %.n]
      [[%pro %txt] ~]
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
      :_  [%notifications-controller !>(|=(notification /default))]
      :~  :-  (welp here.bowl ~[%default])
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
      ?+      stud
            !!
          %notifications-controller
        ::  XX need to check vaz?
        [~ [%notifications-controller vaz]]
      ::
          %txt
        :_  [%notifications-controller !>(state)]
        =/  auth  (de:json:html !<(txt vaz))
        ?~  auth
          ~
        ::  XX parse JSON
        ::       need endpoint + expirationTime at minimum
        ::  XX maybe store endpoint details as $json
        ::       would need a /pro/json.hoon
        ::  XX handle expirationTime with behn
        ::  XX placeholder path
        :~  :-  (welp here.bowl ~[%foo])
            [%make %txt `[%txt !>('')] ~]
        ==
      ::
          %notification
        =/  not  !<(notification vaz)
        ?<  =('' cord.not)
        ?<  (gth time.not now.bowl)
        ?>  =(pith.not pith.src.bowl)
        =/  config
          !<  notifications-config
          q.pail:(need (~(get by ~(tar of:neo kids.bowl)) (state not)))
        :_  [%notifications-controller !>(state)]
        ?:  (has-pith-in kill.config pith.not)
          ~
        ?:  (has-pith-in mute.config pith.not)
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
          ==
        ?:  (has-pith-in buzz.config pith.not)
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
