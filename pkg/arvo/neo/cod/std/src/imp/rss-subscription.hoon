=<
|%
++  state  pro/%txt
++  poke   (sy %txt %fetch %gift ~)
++  kids
  :+  ~  %z
  %-  ~(gas by *lads:neo)
  :~
    :-  [&/%mime-res |]  [pro/%txt ~]
  ==
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    ?@  pal  ~|(%invalid-feed-url !!)
    =/  url  !<(@t q.u.pal)
    :_  u.pal
    :~
      (~(fetch-card pim bowl) url)
    ==
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =/  url  !<(@t q.pail)
    ?+    stud  ~|(bad-stud/stud !!)
      %txt  !!
      %fetch
        :_  pail
        :~
          (~(fetch-card pim bowl) url)
        ==
      %gift
        ~&  'gift got'
        `pail
    ==
  --
--
::
|%
++  pim
  |_  =bowl:neo
  ++  fetch-card
    |=  url=@t
    [(welp here.bowl #/mime-res) %make %http-fetch `txt/!>(url) ~]
  --
--
