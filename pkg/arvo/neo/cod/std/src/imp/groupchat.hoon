/@  groupchat
/@  groupchat-diff
/-  oxy=oxygen
/-  messages
/-  serv=sky-server
^-  kook:neo
|%
++  state  pro/%groupchat
++  poke  (sy %groupchat-diff %eyre-task ~)
++  kids
  :+  ~  %z
  %-  ~(gas by *lads:neo)
  :: :~  :-  [|/%tas |]
  ::     [pro/%sig (sy %sig ~)]
  :~  :-  [|/%tas |/%da |]
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
    ::  default case: make new groupchat with self as only member,
    ::  and subscribe to that publisher
    ?~  old
      :_  :-  %groupchat
          !>([(sy our.bowl ~) ~ here.bowl])
      :~  :-  (snoc here.bowl %pub)
          [%make %message-pub ~ ~]
          ::
          :: :-  (snoc here.bowl %sub)
          :: [%make %message-sub ~ (malt ~[[%pub (snoc here.bowl %pub)]])]
          (bind:oxy bowl)
      ==
    ::  otherwise, I've been created as an invitee to
    ::  someone else's groupchat
    ?>  =(%groupchat-diff p.u.old)
    =/  poke  !<(groupchat-diff q.u.old)
    ?+    -.poke  !!
        %invited
      :_  groupchat/!>([~ ~ host.poke])
      :~  :-  (snoc here.bowl %sub)
          [%make %message-sub ~ (malt ~[[%pub (snoc host.poke %pub)]])]
          ::
          :-  host.poke
          [%poke groupchat-diff/!>([%acked ~])]
          (bind:oxy bowl)
      ==
    ==
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+  stud  ~|(%unsupported-poke !!)
        %groupchat-diff
      =/  sta  !<(groupchat q.state)
      =/  poke  !<(groupchat-diff vax)
      ?+    -.poke  !!
          :: if I'm the host, poke someone's provider to invite them to chat
          %invite
        ?>  =(our ship.src):bowl
        ?<  (~(has in members.sta) ship.poke)
        ::  ?>  =(our.bowl ->.host.sta) :: XX need @p, have @t ?
        :_  :-  %groupchat
            !>(sta(pending (~(put in pending.sta) ship.poke)))
        :~  :-  provider.poke
            [%poke groupchat-diff/!>([%invited here.bowl])]
        ==
      ::
          ::  remove someone from chat. this only removes their ability to post;
          ::  they'll still be receiving new messages!
          %remove
        ?>  =(our ship.src):bowl
        ?>  (~(has in members.sta) ship.poke)
        :-  ~
        :-  %groupchat
        !>  %=  sta
              pending  (~(del in pending.sta) ship.src.bowl)
              members  (~(del in members.sta) ship.src.bowl)
            ==
      ::
          :: when invitee acks, remove them from pending
          :: and add them to pub's permissions
          %acked
        ?>  (~(has in pending.sta) ship.src.bowl)
        :-  ~
        :-  %groupchat
        !>  %=  sta
              pending  (~(del in pending.sta) ship.src.bowl)
              members  (~(put in members.sta) ship.src.bowl)
            ==
      ::
          %post-to-host
        :_  state
        :~  :-  host.sta
            [%poke groupchat-diff/!>([%host-to-pub text.poke])]
        ==
      ::
          %host-to-pub
        ?>  (~(has in members.sta) ship.src.bowl)
        :_  state
        :~  :-  (snoc here.bowl %pub)
            [%poke message/!>([ship.src.bowl now.bowl text.poke])]
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
      =;  manx
        (respond:oxy [bowl eyre-id req manx])
      %~  render
        ui
      (pave:neo pax:(parse-url:oxy request.req))
        %'POST'
      =/  body  (parse-body:oxy request.req)
      =/  mu  ~(. manx-utils:oxy body)
      =/  head  (@tas (got:mu %head))
      ?+  head  ~|(%unsupported-request !!)
          %msg
        =/  message  (vol:mu "text")
        %+  welp 
        :~  :-  here.bowl
            [%poke groupchat-diff/!>([%post-to-host message])]
        ==
        (respond:oxy [bowl eyre-id req *manx])
      ==
    ==
    ::
  ++  ui
    |_  here=pith
    ++  render 
    =/  chat-name=tape
      ?:  ?=([%t @t] (rear here.bowl))  
        (trip +:(rear here.bowl))
      "groupchat"
      ^-  manx
      ;html
        ;head 
          ;meta(charset "UTF-8");
          ;title: {chat-name}
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
          ;+  script:messages
          ;+  style:messages
          ;+  (render-messages:messages [bowl here])
          ;+  (render-sender:messages [bowl /pub here])
        ==
      ==
      :: ;div.p2
      :: =label  "Chat"
      ::   ;+  script:messages
      ::   ;+  style:messages
      ::   ;div.ma.fe.g2.wf
      ::   =style  "max-width: 650px;"
      ::     ;div.fc.g2.wf
      ::       =id  "children"
      ::       ;+  (render-messages:messages [bowl here])
      ::     ==
      ::     ;+  (render-sender:messages [bowl /pub here])
      ::   ==
      :: ==
    --
  --
--
