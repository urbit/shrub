/@  notification
/@  notifications-config
/@  notifications-controller
^-  kook:neo
|%
++  state
  ^-  curb:neo
  [%pro %notifications-controller]
::
++  poke
  ^-  (set stud:neo)
  (sy %notification ~)
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
          %notification
        =/  not  !<(notification vaz)
        ?<  =('' cord.not)
        ?<  (gth time.not now.bowl)
        ?>  =(pith.not pith.src.bowl)
        =/  config
          !<  notifications-config
          q.pail:(need (~(get by ~(tar of:neo kids.bowl)) (state not)))
        :_  [%notifications-controller !>(state)]
        ::
        ::  XX algo has to be more sophisticated than this;
        ::     has to say "is whole pith.not contained in a kill.config path?"
        ::     probably check if first iota in pith.not is first iota of a
        ::     kill.config pith, if yes check second iota, etc.
        ::     this is to handle killing/muting entire subtrees
        ::
        ::
        ?:  (~(has in kill.config) pith.not)
          ~
        ?:  (~(has in mute.config) pith.not)
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
          ==
        ?:  (~(has in buzz.config) pith.not)
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
              ::  XX send push notification
          ==
        ?.  flag.not
          =.  flag.not  %.y
          :~  :-  (welp here.bowl ~[[da/now.bowl]])
              [%make %notification `[%notification !>(not)] ~]
          ==
        :~  :-  (welp here.bowl ~[[da/now.bowl]])
            [%make %notification `[%notification !>(not)] ~]
            ::  XX send push notification
        ==
      ==
  --
--
