/@  github-issue-list-req
/-  github
|%
++  state  
  :-  %or
  :~  pro/%github-issue-list-req
      pro/%github-issue-list-res
      pro/%tang
  ==
++  poke  (sy %iris-res ~)
++  kids  *kids:neo
++  deps 
  %-  ~(gas by *deps:neo)
  :~  :-  %auth
      [req=& [[pro/%github-auth poke=*(set stud:neo)] ~]]
  ==
::
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    ?>  ?=(^ pal)
    ?>  =(%github-issue-list-req p.u.pal)
    =+  !<(req=github-issue-list-req q.u.pal)
    :_  u.pal
    :_  ~
    =+  !<(keys=@t q.pail:(~(got of:neo q:(~(got by deps.bowl) %auth)) ~))
    =/  headers=(list [k=@t v=@t])
      :~  'Content-Type'^'application/json'
          'Authorization'^(crip "Bearer {(trip keys)}")
          'User-Agent'^'Urbit/411 Shrub'
          'X-GitHub-Api-Version'^'2022-11-28'
      ==
    =/  =request:http
      :*  %'GET'
          (crip "https://api.github.com/repos/{(trip owner.req)}/{(trip repo.req)}/issues")
          headers
          :: XX: headers
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
      =/  body=cord  q.data.u.full-file.dat.res
      =/  jon=json
         ~|  failed-to-parse-json/body
        (need (de:json:html body))
      `github-issue-list-res/!>((issue-list:dejs:github jon))
    ==
  --
--
