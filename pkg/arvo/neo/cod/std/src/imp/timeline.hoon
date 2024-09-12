/@  timeline
/@  timeline-diff
/@  post
/-  fp=feed-parser
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
::  /[p/our]/sky/strategy/[p/our]
++  deps  
  %-  ~(gas by *band:neo)
  :~  :-  %src
      ^-  fief:neo
      :-  req=&
      ^-  quay:neo
      :-  [pro/%order ~]
      ^-  (unit port:neo)
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  &
          `lash:neo`[pro/%order ~]
      ==
  ==
++  form
  |_  [=bowl:neo =aeon:neo state=pail:neo]
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :_  timeline/!>((sy our.bowl ~))
    ::  post-pub for our posts
    :~  :-  (welp here.bowl ~[p/our.bowl])
      [%make %post-pub ~ ~]
    ==
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =/  following  !<(timeline q.state)
    ::?+    stud  !!
    ::    %timeline-diff
    ?>  =(%timeline-diff stud)
      =/  poke  !<(timeline-diff vax)
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
      ::
          %make-post
        =/  piths=(list pith)  (get-pith:fp +.poke)
        =/  =lore:neo  q:(~(got by deps.bowl) %src)
        =/  posts=(list post)
          %+  turn  piths
          |=  pit=pith
          =/  u-idea=(unit idea:neo)  (~(get of:neo lore) (oust [0 1] pit))
          ::
          :: XX for now default renderer will be /tree 
          ::
          ?~  u-idea  [/tree pit]
          =/  order
          !<((list pith:neo) q.pail:(need u-idea))
          [(head order) pit]
        ~&  >  posts/posts
        =/  pith  /[p/our.bowl]/posts/[da/now.bowl]
        :_  state 
        :~  [pith %make %quote-post `quote-post/!>([+.poke posts]) ~]  
            :-  (welp here.bowl ~[p/our.bowl])
            [%poke post/!>([%post `post`[/blue/post-pith-ui pith]])]
        ==
      ==
    ::==
  --
--
