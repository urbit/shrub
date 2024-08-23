/@  txt
::
::  this file should become:
::
::    http-mirror
::
::    a generic shrub for mirroring an http resource
::    into your namespace.
::
::    it takes a type which contains: [url=@t poll=@dr]
::
::    its kids are
::       res=[%or pro/mime-data pro/tang]
::
::
=<
|%
++  state  pro/%txt
++  poke  (sy %iris-res %fetch ~)
++  kids
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~
    :-  [|/%da |]  [pro/%mime-data ~]
  ==
++  deps  *deps:neo
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    ?>  ?=(^ pal)
    ?>  =(%txt p.u.pal)
    =+  !<(url=txt q.u.pal)
    :_  u.pal
    :_  ~
    =/  headers=(list [k=@t v=@t])
      :~
        'User-Agent'^'Urbit/411 Shrub'
      ==
    =/  =request:http
      :*  %'GET'
          url
          headers
          ~
      ==
    =/  =req:iris:neo  [#/request request]
    [#/[p/our.bowl]/$/iris %poke iris-req/!>(req)]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+    stud  !!
        %iris-res
      =+  !<(=res:iris:neo vax)
      ?.  ?=(%finished -.dat.res)
        `pail
      ?~  full-file.dat.res
        ~&  %no-file
        `pail
      :_  pail
      :~
        [(welp here.bowl #/[da/now.bowl]) %make %mime-data `mime-data/!>(u.full-file.dat.res) ~]
      ==
    ==
  --
--
::
|%
++  fetch-card  !! ::XX
--
