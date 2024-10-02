/@  dm-diff
/-  oxy=oxygen
/-  messages
/-  serv=sky-server
/-  su=shrub-utils
^-  kook:neo
|%
++  state  pro/%ship  :: who I'm chatting with
++  poke  (sy %dm-diff %eyre-task ~)
++  kids
  :+  ~  %z
  %-  ~(gas by *lads:neo)
  :~  
      :: :-  [|/%tas |]
      :: [pro/%sig (sy %sig ~)]
      :-  [|/%tas |/%da |]
      [pro/%message ~]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  =<
  |_  [=bowl:neo =aeon:neo state=pail:neo]
  +*  web  ~(. +> [bowl state])
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    ?~  old  !!
    ?>  =(%dm-diff p.u.old)
    =/  poke  !<(dm-diff q.u.old)
    ?+    -.poke  !!
        :: create me with a pith to a service provider
        :: to start a new DM with them
        %initiate
      :_  ship/!>(partner.poke)
      :~  :-  (snoc here.bowl %pub)
          [%make %message-pub ~ ~]
          ::
          :-  provider.poke
          [%poke dm-diff/!>([%invited our.bowl here.bowl])]
          (bind:oxy bowl)
      ==
    ::
        :: create me with a pith to an inviter's dm
        :: to accept their DM request
        %invited
      :_  ship/!>(partner.poke)
      :~  :-  (snoc here.bowl %pub)
          [%make %message-pub ~ ~]
          ::
          :-  (snoc here.bowl %sub)
          [%make %message-sub ~ (malt ~[[%pub (snoc dm.poke %pub)]])]
          ::
          :-  dm.poke
          [%poke dm-diff/!>([%acked here.bowl])]
          (bind:oxy bowl)
      ==
    ==
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+  stud  ~|(%unsupported-poke !!)
        %dm-diff
      =/  poke  !<(dm-diff vax)
      ?+    -.poke  !!
          :: invitee pokes me with a pith to their DM
          :: to finalize the negotiation
          %acked
        =/  partner  !<(ship q.state)
        ?>  =(partner ship.src.bowl)
        :_  state
        :~  :-  (snoc here.bowl %sub)
            [%make %message-sub ~ (malt ~[[%pub (snoc dm.poke %pub)]])]
        ==
      ::
          %post
        ?>  =(our ship.src):bowl
        :_  state
        :~  :-  (snoc here.bowl %pub)
            [%poke txt/!>(text.poke)]
        ==
      ==
    ::
        %eyre-task
      (handle:web !<(task:eyre:neo vax))
    ==
  --
  |_  [=bowl:neo =pail:neo]
  ::
  ++  handle
    |=  [eyre-id=@ta req=inbound-request:eyre]
    ^-  (quip card:neo pail:neo)
    :_  pail
    ?+    method.request.req  
        ~|(%unsupported-http-method !!)
    ::
        %'GET'
      :: ~&  >>  (kids-at-pith:su kids.bowl /)
      =;  manx
        (respond:oxy [bowl eyre-id req manx])
      %~  render
        ui
      (pave:neo pax:(parse-url:oxy request.req))
        %'POST'
      =/  body  (parse-body:oxy request.req)
      =/  mu  ~(. manx-utils:oxy body)
      =/  head  (@tas (got:mu %head))
      ~&  >>  got-head/head
      ?+  head  ~|(%unsupported-request !!)
          %msg
        =/  message
          :+
            (slav %p (vol:mu "ship"))
            now.bowl
            (vol:mu "text")
            ::(slav %da (vol:mu "date"))
        %+  welp 
        :~  :-  (snoc here.bowl %pub)
            [%poke message/!>(message)]
        ==
        (respond:oxy [bowl eyre-id req *manx])
      ==
    ==
    ::
  ++  ui
    |_  here=pith
    ++  render 
    =/  ship  !<(ship q.pail)
      ^-  manx
      ;html
        ;head 
          ;meta(charset "UTF-8");
          ;title: {<ship>}
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
          ;+  view
        ==
      ==
    ::
    ++  view
      ;div.p2.wf.hf
        =hx-on-message-sent  "$(this).find('.refresher').emit('refresh');"
        ;div.mw-page.ma.wf.hf
          =style
            """
            display: grid;
            grid-template-rows: 1fr auto;
            grid-template-columns: auto;
            grid-template-areas:
              "messages"
              "sender"
            """
          ;+  style:messages
          ;+  (render-messages:messages bowl here |)
          ;+  (render-sender:messages bowl /pub here)
          ;+  script:messages
        ==
      ==
    --
  --
--
