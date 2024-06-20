/-  github
|%
++  state  pro/%github-auth
++  poke  (sy %github-auth %github-issue-list-req %gift ~)
++  kids
  :+  ~  %y
  %-  ~(gas by *lads:neo)
      :: /req/[@uv]
  :~  :-  [&/%req |/%uv |]
      :_  ~
      :-  %or
      :~  pro/%github-issue-list-req
          pro/%github-issue-list-res
          pro/%tang
      ==
      ::  /repo/[org=@t]/[repo=@t]/issues/[id=@ud]
      :-  [&/%repo |/%t |/%t &/%issues |/%ud |]
      :_(~ pro/%github-issue)
  ==
++  deps  *deps:neo
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    `(need pal)
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+    stud  !!
        %github-auth  `[stud vax]
        %github-issue-list-req
      :_  pail
      :~  :-  (welp here.bowl #/req/[uv/(end [3 4] eny.bowl)])
          :*  %make
              %github-issue-list-handler
              `github-issue-list-req/vax
              (~(gas by *conf:neo) auth/here.bowl ~)
          ==
      ==
    ::
        %gift
      =+  !<(=gift:neo vax)
      ~&  have-gift/gift
      :_  pail
      %-  zing
      %+  turn  ~(tap of:neo gift)
      |=  [=pith:neo @ud =mode:neo]
      ^-  (list card:neo)
      ?.  ?=(%dif mode)
        ~
      =/  kid=pail:neo  pail:(~(got of:neo kids.bowl) pith)
      ?.  =(%github-issue-list-res p.kid)
        ~
      %+  murn  !<((list issue:github) q.kid)
      |=  =issue:github
      ^-  (unit card:neo)
      =/  pit  #/repo/[t/'urbit']/[t/'shrub']/issues/[ud/number.issue]
      :-  ~
      [(welp here.bowl pit) %make %github-issue `github-issue/!>(issue) ~]
    ==
  --
--
