/@  timeline
/@  timeline-diff
=>
::
|%
++  make-sub
  |=  [here=pith =ship]
  ^-  (list card:neo)
  =/  dep
    (malt ~[[%pub ~[p/ship %home %feed p/ship]]])
  :~  :-  (welp here ~[p/ship])
      [%make %post-sub ~ dep]
  ==
--
::
|%
++  state  pro/%timeline
++  poke  
  (sy %timeline-diff ~)
++  kids
  :+  ~  %y     :: XX can I make this a %z that requires grandkids = posts?
  %-  ~(gas by *lads:neo)
  :~  :-  [|/%p |]
      [pro/%sig ~]
  ==
++  deps  *deps:neo
++  form
  |_  [=bowl:neo =aeon:neo state=pail:neo]
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :_  timeline/!>(~)
    ::  post-pub for our posts
    :~  :-  (welp here.bowl ~[p/our.bowl])
      [%make %post-pub ~ ~]
    ==
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =/  following  !<(timeline q.state)
    ?+    stud  !!
        %timeline-diff
      =/  poke  !<(timeline-diff vax)
      ~&  >>  poke/poke
      ?-    -.poke
          :: XX if you unfollow and refollow, what happens?
          :: if you make over a sub, do the kids get remade?
          %follow
        :-  (make-sub [here.bowl ship.poke])
        timeline/!>((~(put in following) ship.poke))
      ::
          %unfollow
        :-  ~
        timeline/!>((~(del in following) ship.poke))
      ::
          %hear  :: other shrubs should poke this liberally
        :-  (make-sub [here.bowl ship.poke])
        state
      ::
          %post
        :_  state
        :~  :-  (welp here.bowl ~[p/our.bowl])
            [%poke post/!>([%post post.poke])]
        ==
      ==
    ==
  --
--
