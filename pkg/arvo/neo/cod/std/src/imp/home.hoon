/@  home
/*  feather-intro
/*  diary
/*  counter
/*  tasks
/*  messenger
/*  introduction
/*  developer-environment-setup
/*  axal
/*  mast-guide
^-  kook:neo
|%
++  state  pro/%home
++  poke  (sy %home ~)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :_  home/!>(*home)
    :~  [#/[p/our.bowl]/home/diary %make %diary ~ ~]
      ::
        [#/[p/our.bowl]/home/docs %make %folder `folder/!>([%introduction %tutorials %guides ~]) ~]
        [#/[p/our.bowl]/home/docs/introduction %make %sail `sail/!>([introduction 'prose p-page mw-page ma' ~]) ~]
      ::
        [#/[p/our.bowl]/home/docs/tutorials %make %folder `folder/!>([%counter %diary %messenger %tasks ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/counter %make %sail `sail/!>([counter 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/diary %make %sail `sail/!>([diary 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/messenger %make %sail `sail/!>([messenger 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/tasks %make %sail `sail/!>([tasks 'prose p-page mw-page ma' ~]) ~]
      ::
        [#/[p/our.bowl]/home/docs/guides %make %folder `folder/!>([%development %feather %axal-core ~]) ~]
        [#/[p/our.bowl]/home/docs/guides/development %make %sail `sail/!>([developer-environment-setup 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/guides/feather %make %sail `sail/!>([feather-intro 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/guides/axal-core %make %sail `sail/!>([axal 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/guides/mast %make %sail `sail/!>([mast-guide 'prose p-page mw-page ma' ~]) ~]
      ::
        ::[#/[p/our.bowl]/sky/strategy/[p/our.bowl]/home %make %order `order/!>([#/mast/folder-ui ~]) ~]
    ==
  ++  poke
    |=  =pail:neo
    ^-  (quip card:neo pail:neo)
    ?+    p.pail  !!
        %home
      [~ pail]
    ==
  --
--
