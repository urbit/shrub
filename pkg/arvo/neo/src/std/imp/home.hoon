/@  home
^-  firm:neo
|%
++  state  %home
++  poke  (sy %home ~)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo sta=vase *]
  ++  init
    |=  old=(unit vase)
    ^-  (quip card:neo vase)
    :_  !>(*home)
    :~  [#/[p/our.bowl]/home/diary %make %diary ~ ~]
        [#/[p/our.bowl]/home/tasks %make %task `!>(['' | ~]) ~]
        [#/[p/our.bowl]/home/sail %make %sail `!>(['' 'prose p3' ~]) ~]
        [#/[p/our.bowl]/home/accel %make %accel ~ ~]
        [#/[p/our.bowl]/home/circle %make %circle ~ ~]
        [#/[p/our.bowl]/home/landscape %make %iframe `!>('https://migrev-dolseg.com/apps/landscape') ~]
        [#/[p/our.bowl]/home/files %make %folder `!>(~[%groups %feeds %rumors %test-deck]) ~]
        [#/[p/our.bowl]/home/files/test-deck %make %deck ~ ~]
        [#/[p/our.bowl]/home/files/rumors %make %iframe `!>('https://migrev-dolseg.com/rumors') ~]
        [#/[p/our.bowl]/home/files/groups %make %iframe `!>('https://migrev-dolseg.com/apps/groups') ~]
        [#/[p/our.bowl]/home/files/feeds %make %iframe `!>('https://migrev-dolseg.com/feeds/~/recent') ~]
        [#/[p/our.bowl]/home/planner %make %planner ~ ~]
    ==
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?+    stud  !!
        %home
      [~ vax]
    ==
  --
--
