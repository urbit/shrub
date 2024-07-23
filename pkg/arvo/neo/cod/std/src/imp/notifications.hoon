/@  txt
/@  notification
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
  :~  :-  [[%.y %notification] [%.n %da] %.n]
      [[%pro %notification] ~]
      :-  [[%.y %config] [%.n %tas] %.n]
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
      :_  [%notifications-controller !>(|=(notification #/config/default))]
      :~  :-  (welp here.bowl ~[%config %default])
          [%make %notifications-config `[%sig !>(~)] ~]
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
          %notification
        =/  not  !<(notification vaz)
        ?<  =('' cord.not)
        ?<  (gth time.not now.bowl)
        ::  XX should cut head off path more intelligently
        ::       "if head is our.bowl, remove head"
        ?>  =(pith.src.bowl (tail src.not))
        ~&  >>  (state not)
        ~&  >>  ~(tar of:neo kids.bowl)
        ~&  >>  (~(get by ~(tar of:neo kids.bowl)) (state not))
        ~&  >>  (~(kids of:neo kids.bowl) #/config/default)
        :: =/  config
        ::   !<  notifications-config
        ::   q.pail:(need (~(get by ~(tar of:neo kids.bowl)) (state not)))
        :: :_  [%notifications-controller !>(state)]
        :: ?:  (has-pith-in kill.config src.not)
        ::   ~
        :: ?:  (has-pith-in mute.config src.not)
        ::   =.  flag.not  %.y
        ::   :~  :-  (welp here.bowl ~[[da/now.bowl]])
        ::       [%make %notification `[%notification !>(not)] ~]
        ::   ==
        :: ?:  (has-pith-in buzz.config src.not)
        ::   =.  flag.not  %.y
        ::   :~  :-  (welp here.bowl ~[[da/now.bowl]])
        ::       [%make %notification `[%notification !>(not)] ~]
        ::       ::  XX send push notifications to subscribers
        ::   ==
        :_  [%notifications-controller !>(state)]
<<<<<<< HEAD
=======
        ?:  (has-pith-in-any kill.config pith.not)
          ~
        ?:  (has-pith-in-any mute.config pith.not)
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
          ==
        ?:  (has-pith-in-any buzz.config pith.not)
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
              ::  XX send push notification
          ==
>>>>>>> 13d77f915b (Draft frontend code)
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
