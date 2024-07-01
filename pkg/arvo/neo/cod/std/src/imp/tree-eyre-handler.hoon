/@  htmx-type=htmx
/-  serv=sky-server
/*  jquery
/*  htmx-js
/*  htmx-response-targets
/*  htmx-idiomorph
/>  htmx
/<  node
/<  http-request
=<
^-  kook:neo
|%
++  state  pro/%eyre-task
++  poke  *(set stud:neo)
++  kids  *kids:neo
++  deps 
  %-  ~(gas by *band:neo)
  :~  :-  %src
      ^-  fief:neo
      :-  req=|
      ^-  quay:neo
      :-  [[%or pro/%htmx any/~ ~] ~]
      ^-  (unit port:neo)
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  &
          `lash:neo`[[%or pro/%htmx any/~ ~] ~]
      ==
  ==
++  form 
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  poke
    |=  [=stud:neo =vase]
    ^-  (quip card:neo pail:neo)
    !!
  ++  init 
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  [=stud:neo =vase]  (need pal)
    =+  !<([eyre-id=@ta req=inbound-request:eyre] vase)
    ~&  >  req/req
    :_  [stud vase]
    ?~  src=(~(get by deps.bowl) %src)
      =/  stub=manx
        ;div
          ;h1: nothing here
        ==
      %:  eyre-cards
        eyre-id
        bowl
        404
        ['content-type' 'text/html']~
        stub
      ==
    =/  here  p.u.src
    ^-  (list card:neo)
    ?+    method.request.req  ~|(%unsupported-http-method !!)
        %'GET'
      ?~  reet=(~(get of:neo q.u.src) /)
        =/  bol  *bowl:neo
        =.  here.bol  here
        =/  stub=manx
          ;div
            ;h1: nothing here
          ==
        %:  eyre-cards
            eyre-id
            bowl
            200
            ['content-type' 'text/html']~
            stub
        ==
      =/  bol  *bowl:neo
      =.  here.bol  here
      =.  our.bol  our.bowl
      =.  now.bol  now.bowl
      =.  eny.bol  eny.bowl
      =.  kids.bol  q.u.src
      =/  stub=manx
        ;div
          ;+  (view bol)
        ==
      %:  eyre-cards
          eyre-id
          bowl
          200
          ['content-type' 'text/html']~
          stub
      ==
    ==
  --
--
::
|%
++  manx-to-octs
  |=  man=manx
  (as-octt:mimes:html (en-xml:html man))
::
++  eyre-cards
  |=  [eyre-id=@ta =bowl:neo status=@ud =header-list:http =manx]
  ^-  (list card:neo)
  =/  =pith:neo  #/[p/our.bowl]/$/eyre
  =/  head=sign:eyre:neo  [eyre-id %head [status header-list]]
  =/  data=sign:eyre:neo  [eyre-id %data `(manx-to-octs manx)]
  =/  done=sign:eyre:neo  [eyre-id %done ~]
  :~  [pith %poke eyre-sign/!>(head)]
      [pith %poke eyre-sign/!>(data)]
      [pith %poke eyre-sign/!>(done)]
      [here.bowl %cull ~]
      [here.bowl %tomb ~]
  ==
::
++  state-print
  |=  =pail:neo
  ^-  manx
  ;div.pre.mono.scroll-x.p2
    ;+  ;/
    =/  size  (met 3 (jam q.q.pail))
    ?:  (gth size 750)  "vase too large to print: {<size>}"
    (of-wall:format (~(win re (sell q.pail)) 0 80))
  ==
::
++  view 
  |=  =bowl:neo
  ;html
    ;head
      ;meta(charset "UTF-8");
      ;title: s k y
      ;script: {(trip jquery)}
      ;script: {(trip htmx-js)}
      ;script: {(trip htmx-response-targets)}
      ;script: {(trip htmx-idiomorph)}
      ;link
        =rel  "stylesheet"
        =href  "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.15.1/cdn/themes/light.css"
        ;
      ==
      ;script
        =type  "module"
        =src  "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.15.1/cdn/shoelace.js"
        ;
      ==
    ==
    ;body 
    ;+  (body-view bowl)
    ==
  ==
::
++  body-view
  |=  =bowl:neo
  ;div
    ;p:  state
    ;+
    ?~  node=(~(get of:neo kids.bowl) /)
        ;div.p2: none
    =/  =pail:neo  q.saga.u.node
    ;div.fc.g2.as.p2
      ;span: {<p.pail>}
      ;div
        ;span: {<p.pail>}
        ;+  (state-print pail)
        ;+  (kids-view bowl)
      ==
    ==
  ==
::
++  kids-view
  |=  =bowl:neo
  =/  first-kids=(list @t)  
  :: TODO: if all kids
  :: only pith 
  %+  turn 
    ::only short paths
    %+  sort 
      %+  skim  ~(tap of:neo kids.bowl) 
      |=([=pith:neo *] =(1 (lent pith)))
    aor
  |=([=pith:neo *] (crip "[{(en-tape:pith:neo pith)}]"))
  =/  row-template=tape  (join ' 1fr ' `tape`first-kids)
  ;div
  =style  "display: grid; grid-template-rows: {row-template}; grid-template-columns: auto; padding: 12px;"
    ;*
    %+  turn  
        %+  sort  ~(tap of:neo kids.bowl) 
        aor
    |=  [=pith =idea:neo]
    ^-  manx
    ?~  pith  
      ;div
      =style  "visibility: hidden"
        nothing
      ==
    ;div
    =style  "grid-column-start: {(scow %ud (lent pith))}; grid-column-end: {(scow %ud +((lent pith)))}; grid-row-start: {(en-tape:pith:neo [-.pith ~])};grid-row-end: {(en-tape:pith:neo [-.pith ~])};padding: 8px; border: 2px solid black;border-radius: 6px;margin-top: 1rem;"
      ;h3:  {(en-tape:pith:neo pith)}
      ;+
      =/  pal=pail:neo  q.saga.idea
      ;div
        ;h3:  state
        ;+  (state-print pal)
      ==
    ==
  ==
--