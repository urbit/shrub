/@  metadata 
/-  serv=sky-server
/-  srv=server
/<  http-request
=<
^-  kook:neo
|%
++  state  pro/%metadata
++  poke   (sy %metadata %eyre-task ~)
++  kids  
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  ~
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
    ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  =pith:neo  #/[p/our.bowl]/$/eyre
    =/  =binding:eyre  [~ ~[%neo %metadata]]
    =/  =req:eyre:neo  [%connect binding here.bowl]
    :_  metadata/!>(~)
    :~  [pith %poke eyre-req/!>(req)]
    ==
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =/  state  !<(metadata q.pail)
    ?+  stud  ~|(%incorect-stud !!)
        %metadata
      =/  new-data  !<(metadata vax)
      =/  piths=(list pith:neo)  ~(tap in ~(key by new-data))
      =/  data=(list [pith:neo (set (pair mane tape))])
          %+  turn  piths
          |=  =pith:neo
          ^-  [pith:neo (set (pair mane tape))]
          =/  old-data  (~(get by state) pith)
          =/  update  (~(got by new-data) pith)
          ?~  old-data  [pith update]
          :-  pith
          (~(gas in (need old-data)) ~(tap in update))
      :_  metadata/!>((~(uni by state) (malt data)))
      ~
      ::
        %eyre-task
      :_  metadata/!>(state)
      =+  !<(=task:eyre:neo vax)
      =/  [eyre-id=@ta req=inbound-request:eyre]  task
      =/  request=request:http  request.req
      ?.  authenticated.req
        =/  eyre=pith:neo  #/[p/our.bowl]/$/eyre
        %+  ~(respond neo:srv eyre)   eyre-id
        (login-redirect:gen:srv request)
      =/  purl  (parse-url:serv request)
      =/  here  (pave:neo pax.purl)
      ~&  >  here/here
      ?+    method.request  ~|(%unsupported-http-method !!)
      ::
          %'GET'
        =/  data  (~(get by state) here)
        ~&  data
        %-  eyre-cards
        :*  
            eyre-id
            bowl 
            status=200 
            headers=`header-list:http`['content-type'^'text/html']~ 
            ?~  data  (view ~ here)
            (view (need data) here)
          ==
          %'POST'
        =/  meta-vase  (http-request [%metadata `request:http`request])
        ::=+  !<(=metadata meta-vase)
        :~  [here.bowl %poke [%metadata meta-vase]]
        ==
      ==
    ==
  --
--
::
|%
::
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
  ==
::
++  view
  |=  [data=(set (pair mane tape)) =pith:neo]
  =/  here  (en-tape:pith:neo pith)
  ^-  manx
  ;html
    ;head
      ;*  standard-head-tags:serv
    ::   ;+  script
    ==
    ;body.fc.ac.p4
      ::;+  (form here)
      ;div.fr.p2.g1.hf
      ;+  (body data here)
      ;+  (hawk-view here)
      ==
    ==
  ==
::
:: ++  script 
::   ;script
::       ;+  ;/  %-  trip
::     '''
::     const select = document.getElementById('select-field');
::     select.addEventListener('change', () => {
::     const selected = select.options[select.selectedIndex];
::     if(selected = "%a"){ document.getElementById('text-input').classList.remove('hidden');} else {document.getElementById('text-input').classList.add('hidden');}
::     });
::     '''
::   ==
::
++  body
  |=  [data=(set (pair mane tape)) here=tape]
  ^-  manx
  ;div.fc.jb.g2.p1.bd1
    ;div.fc.as.g2
      ;*
      %+  turn  ~(tap in data)
      |=  [p=mane q=tape]
        ?+  p
          ^-  manx
          ;p:  err
          %t
        =-  -(n.g p, c ~[[g=[n=%$ a=~[[n=%$ v=q]]] c=~]], a.g [[%class "b1 br1 p1"] ~])
        ^-  manx
        *manx
        ::
          %a
        =-  -(g [p [[%href q] [%class "b1 br1 p1"] ~]], c ~[[g=[n=%$ a=~[[n=%$ v=q]]] c=~]])
        ^-  manx
        *manx
        ::
          %img
        =-  -(g [p [[%src q] [%style "width: 50%;"] ~]])
        ^-  manx
        *manx
      ==
    ==
    ;+  (form here)
  ==
::
++  hawk-view
|=  here=tape
  ;iframe.b0.wf.hf.bd1
  =src  "/neo/hawk{here}"
  ;
  ==
::
++  form
  |=  here=tape
  ^-  manx
  ;form.fr.ja.g1.p1
  =method  "post"
  =action  "/neo/metadata{here}"
    :: ;input.p1.bd1.br1
    :: =type         "text"
    :: =name         "mane"
    :: =placeholder  "metadata type"
    :: =required     ""
    :: ;
    :: ==
    ;select.p1.bd1.br1
    =id  "select-field"
    =name  "mane"
    =required     ""
      ;option
      =value  "%t"
      ;  text
      ==
      ;option
      =value  "%a"
      ;  link
      ==
      ;option
      =value  "%img"
      ;  image
      ==
    ==
    ;input.p1.bd1.br1
    =type         "text"
    =name         "text"
    =placeholder  "metadata"
    =required     ""
    ;
    ==
    ;input.p1.bd1.br1.hidden
    =id  "text-input"
    =placeholder  "aditional data"
    ;
    ==
    ;button.p1.bd1.br1.hover.b1
    =type  "submit"
      ;span:  add
    ==
  ==
--