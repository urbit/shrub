/@  dm-diff
/@  groupchat
/@  groupchat-diff
/@  messenger
/@  messenger-diff
/@  ship
/-  oxy=oxygen
/-  feather-icons
/-  serv=sky-server
/-  su=shrub-utils
::
|%
++  state  pro/%messenger
::  +poke: The poke types
::
::    We allow for the three different kinds of diffs that we support
::
++  poke  
  ::    %dm-diff is for creating DMs
  (sy %dm-diff %groupchat-diff %messenger-diff %eyre-task ~)
::  +kids: Children for messenger
++  kids
  ::    Child constraints
  ::
  ::  All children under this tree either are DMs, or groupchats
  ::  Dms are identified by @p
  ::  Groupchats are identified by [@p @t]
  ::
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  
      :-  [|/%tas |/%p |/%t |]
      [[%or [pro/%ship pro/%groupchat ~]] (sy %dm-diff %groupchat-diff ~)]
  ==
++  deps  *deps:neo
++  form
  :: ^-  form:neo
  =<
  |_  [=bowl:neo =aeon:neo state=pail:neo]
  +*  web  ~(. +> [bowl state])
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :_  messenger/!>(~)
    :~  (bind:oxy bowl)
    ==
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+    stud  !!
        %dm-diff
      ~&  >>>  'got dm diff'
      =/  poke  !<(dm-diff vax)
      ?>  =(%invited -.poke)
      :_  state
      :~  :-  (welp here.bowl ~[%dms p/ship.src.bowl])
          [%make %dm `dm-diff/vax ~]
      ==
    ::
        %groupchat-diff
      =/  poke  !<(groupchat-diff vax)
      ?+    -.poke  !!
          %invited
        :_  state
        :~  :-  (welp here.bowl ~[%groupchats p/ship.src.bowl (rear host.poke)])
            [%make %groupchat `groupchat-diff/vax ~]
        ==
      ==
    ::
        %messenger-diff
      ?>  =(our ship.src):bowl
      =/  poke  !<(messenger-diff vax)
      ?-    -.poke
          %new-dm
        ?:  (~(has of:neo kids.bowl) ~[%dms p/partner.poke])
          [~ state]
        =/  provider  ~[p/partner.poke %home %messenger]
        :_  state
        :~  :-  (welp here.bowl ~[%dms p/partner.poke])
            [%make %dm `dm-diff/!>([%initiate partner.poke provider]) ~]
        ==
      ::
          %new-groupchat
        =/  location
          (welp here.bowl ~[%groupchats p/our.bowl t/name.poke])
        :_  state
        :-  [location [%make %groupchat ~ ~]]
        (send-invites:web invites.poke location)
      ::
          %invite-to-groupchat
        =/  location
          (welp here.bowl ~[%groupchats p/our.bowl t/name.poke])
        :_  state
        (send-invites:web invites.poke location)
      ==
        %eyre-task
      ~&  (kids-at-pith:su kids.bowl /)
      (handle:web !<(task:eyre:neo vax))
    ==
  --
  |_  [=bowl:neo =pail:neo]
  ::
  ++  send-invites
    |=  [invites=(set ship) location=pith]
    %+  turn
      ~(tap in invites)
    |=  =ship
    :-  location
    =/  provider  ~[p/ship %home %messenger]
    ~&  provider
    [%poke groupchat-diff/!>([%invite ship provider])]
  ::
  ++  handle
    |=  [eyre-id=@ta req=inbound-request:eyre]
    ^-  (quip card:neo pail:neo)
    ~&  p.pail
    :_  pail
    ?+    method.request.req  
        ~|(%unsupported-http-method !!)
    ::
        %'GET'
      =;  manx
        (respond:oxy [bowl eyre-id req manx])
      %~  render
        ui
      (pave:neo pax:(parse-url:oxy request.req))
    ::
        %'POST'
      =/  body  (parse-body:oxy request.req)
      =/  mu  ~(. manx-utils:oxy body)
      =/  head  (@tas (got:mu %head))
        ?+  head  ~|(%unsupported-request !!)
          ::
            %new-dm
          =/  partner=ship  ;;  @p  (slav %p (vol:mu "invites"))
          %+  welp 
          (respond:oxy [bowl eyre-id req *manx])
          [here.bowl %poke [%messenger-diff !>([head partner])]]~
          ::
            %new-groupchat
          =/  invites=tape  
            =/  val=tape  (need (val:mu "invites"))
            ?:  =(' ' (rear val))  (snip val)
            val
          =/  parsed-invites=(set @p)
            %-  silt
            %+  scan  (weld " " invites)
              %-  star
                ;~  pose
                  ;~  pfix  (jest ' ~')
                  fed:ag
                  ==
                  ;~  pfix  (jest ', ~')
                  fed:ag
                  ==
                ==
          =/  value  (val:mu "name")
          =/  name=cord 
          ::  TODO: if invites are longer than some amount of character
            ?~  value  (crip invites)
            (crip (need value))
          %+  welp
          (respond:oxy [bowl eyre-id req *manx])
          [here.bowl %poke [%messenger-diff !>([head name parsed-invites])]]~
          ::
            %messenger-created 
          ~&  >>>  %meesenger-created
          =;  manx
            (respond:oxy [bowl eyre-id req manx])
          %~  render
            ui
          (pave:neo pax:(parse-url:oxy request.req))
          ::
        ==
    ==
  ::
  ++  ui
    |_  here=pith
    ++  render 
      ^-  manx
      ;html
        ;head 
          ;meta(charset "UTF-8");
          ;title:  home
          ;*  old-standard-head-tags:serv
          ;*  standard-head-tags:serv
          ;meta
            =name  "htmx-config"
            =content  (trip '{"ignoreTitle":"true"}')
            ;
          ==
        ==
        ;body
          =hx-ext  "dom-enc,response-targets"
          ;div.p2.fc.ac.view.g2.ma
            ;style:  {style}
            ;+  make-chat
            ;+  all-chats
          ==
        ==
      ==
    ::
    ++  style
      ^~
      %-  trip
        '''
        .view {
            max-width: 650px;
            padding-bottom: 50vh;
            padding-top: 30px;
        }
        input[type="text"]:hover {
            cursor: text;
        }
        input:focus {
            outline: none;
        }
        .w70{
            width: 70%;
        }
        .bc1{
            border: solid 1px var(--b2);
        }
        '''
    ::
    ++  make-chat
      =/  oninput
        %-  trip
        '''
        this.setAttribute("value", this.value); 
        if (this.value.includes(" ~")){
          this.parentNode.setAttribute("head", "new-groupchat");
          this.nextElementSibling.classList.remove("hidden");
        }else{
          this.parentNode.setAttribute("head", "new-dm");
          this.nextElementSibling.classList.add("hidden");
        }
        '''
        :: """
        :: this.setAttribute("value", this.value); this.nextElementSibling.nextElementSibling.setAttribute('hx-get', '{(en-tape:pith:neo here.bowl)}/dms/' + this.value); htmx.process(document.body);
        :: """
      ;form.fr.jc.g1.w70
        =hx-post  (en-tape:pith:neo here)
        =head     "new-dm"
        =hx-swap  "none"
        =hx-on-htmx-after-request  "$(this).find('.redirect').emit('messenger-created')"
        ;input.grow.bc1.p2.br1
          =name          "invites"
          =type          "text"
          =required      ""
          =placeholder   "Start chat (e.g. ~sampel-palnet)"
          =oninput       oninput
          =autocomplete  "off"
          ;
        ==
        ;input.hidden.grow.bc1.p2.br1
          =type         "text"
          =name         "name"
          =placeholder  "chat name"
          =oninput      (trip 'this.setAttribute("value", this.value);')
          ;
        ==
        ;div.redirect.hidden
          =hx-post     (en-tape:pith:neo here)
          =head        "messenger-created"
          =hx-trigger  "messenger-created"
          =hx-swap     "outerHTML"
          =hx-target   "body"
          ;
        ==
        ;button.loader.br1.hover.p2.b0.bc1
          ;span.loaded;  >
          ;span.loading
            ;+  loading.feather-icons
          ==
        ==
      ==
    ::
    ++  all-chats
    ~&  >  (kids-at-pith:su kids.bowl /)
      =/  kids
        %+  skid  ~(tap of:neo kids.bowl)
            |=  [=pith =idea:neo]
            =(p.q.saga.idea %groupchat)
      ^-  manx
      ;div.fc.as.g1.w70
        ;div.fc.ac.g1.wf
        =id  "dms"
        ;*  %+  turn  q.kids
            |=  [=pith =idea:neo]
            ?~  pith
              ;span.hidden:  no dms
            ?:  (lte 3 (lent pith))
              ;h1.hidden:  {<pith>}
            (dm pith)
        ==
        ;div.fc.ac.g1.wf
        =id  "groupchats"
          ;*  %+  turn  p.kids
              |=  [=pith =idea:neo]
              ?~  pith  ;span.hidden:  no groupchats
              (chat pith)
        ==
      ==
    ::
    ++  dm 
      |=  =pith
      =/  ship
        ?.  ?=([%p @p] (rear pith))  *@p
        +:;;([%p @p] (rear pith))
      ^-   manx
      ;a.br1.hover.b0.fr.jb.wf.bc1
      =href     (en-tape:pith:neo (welp here.bowl pith))
      =hx-swap  "innerHTML"
        ;h3.s-1.p2:  {<ship>}
      ==
    ::
    ++  chat
      |=  =pith
      ~&  pith
      =/  org=@p  +:;;([%p @p] (snag 1 `(list iota)`pith))
      ::=/  members=(list ship)  ~(tap in members:!<(groupchat q.q.saga.idea))
      =/  chat  +:;;([%t @t] (rear pith))
      ^-  manx
      ;div.wf.br1.fc.g1
        ;div.fr.g1
          ;a.br1.hover.fr.jb.g2.wf.bc1.b0
          =href     (en-tape:pith:neo (welp here.bowl pith))
          =hx-swap  "innerHTML"
            ;h3.s-1.p2:  {(trip chat)}
            ;h3.s-1.p2:  {<org>}
          ==
        ==
      ==
    --
  --
--        
