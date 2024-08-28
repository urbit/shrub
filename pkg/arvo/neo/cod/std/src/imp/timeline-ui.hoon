/@  timeline-diff
/@  post
/-  serv=sky-server
/-  feather-icons
/-  manx-utils
/-  su=shrub-utils
^-  kook:neo
=<
|%
++  state  pro/%eyre-task
++  poke   (sy %rely ~)
++  kids  *kids:neo
++  deps
  %-  ~(gas by *band:neo)
  :~  :-  %src
      :-  req=&
      :-  [pro/%timeline (sy %timeline-diff ~)]
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  [|/%p |]
          [[%only %sig] ~]
          :-  [|/%p |/%da |]
          [[%only %post] ~]
      ==
  ==
::
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+    stud  !!
        %rely
      :_  pail
      =/  task  !<(task:eyre:neo q.pail)
      (eyre-cards [bowl task])
    ==
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  [=stud:neo =vase]  (need pal)
    =+  !<(=task:eyre:neo vase)
    =/  [eyre-id=@ta req=inbound-request:eyre]  task
    ?+    method.request.req  ~|(%unsupported-http-method !!)
        %'GET'
      :_  [stud vase]
      (eyre-cards [bowl task])
        %'POST'
      :_  [stud vase]
      ^-  (list card:neo)
      =/  here  p:(~(got by deps.bowl) %src)
      =/  body  (parse-body:serv request.req)
      =/  mu  ~(. manx-utils body)
      =/  head  (@tas (got:mu %head))
      ?+    head  !!
          %new-post
        =/  =cord  (vol:mu "post")
        =/  =stud:neo  
          =/  val=(unit tape)  (val:mu "renderer")
          ?~  val  %$
          ;;(@tas (crip (need val)))
        =/  =pith
            !<  pith
            %+  slap  (slop !>(..zuse) !>(bowl))
            %-  ream  cord
        ~&  >>  pith/pith
        :~  [here %poke [%timeline-diff !>([%post [stud pith]])]]
        ==
        ::
          %make-post
        =/  =cord  (vol:mu "post")
        =/  stud  %post-link-ui
        =/  pith  /[p/our.bowl]/posts/[da/now.bowl] 
        :~  [here %poke [%timeline-diff !>([%post [stud pith]])]]
            [pith %make %txt `txt/!>(cord) ~]
        ==
      ==
    ==
  --
--
::
|%
++  eyre-cards
  |=  [=bowl:neo [eyre-id=@ta req=inbound-request:eyre]]
  =+  #/[p/our.bowl]/$/eyre
  :~  (head-card - eyre-id)
  ::
      :*  -
          %poke
          %eyre-sign
          !>
          :+  eyre-id
            %data
          :-  ~
          %-  manx-to-octs
          %~  render
            web
          :-  bowl
          (pave:neo pax:(parse-url-frfr:serv request.req))
      ==
  ::
      (done-card - eyre-id)
      [here.bowl %cull ~]
      [here.bowl %tomb ~]
  ==
::
++  head-card
  |=  [=pith eyre-id=@ta]
  :*  pith
      %poke
      %eyre-sign
      !>
      :^    eyre-id
          %head
        200
      ['content-type' 'text/html']~
  ==
::
++  done-card
  |=  [=pith eyre-id=@ta]
  [pith %poke eyre-sign/!>([eyre-id %done ~])]
::
++  get-all-feed-entries 
|=  =lore:neo
^-  (list pith)
%+  skim  (kidz-at-pith:su / lore)
|=  =pith
(gth (lent pith) 1)
::
++  get-my-feed-entries 
|=  [=lore:neo our=ship]
^-  (list pith)
(kidz-at-pith:su /[p/our] lore)
::
++  get-follow-feed
|=  =lore:neo
^-  (list pith)
=/  followed=(set @p)
  ::(got-vase-saga-by-pith:su lore /)
  =/  idea=idea:neo  (~(got of:neo lore) /)
  !<((set @p) q.q.saga:idea)
%-  zing
  %+  turn  ~(tap in followed)
    |=  ship=@p
    %+  turn
      (kids-at-pith:su lore /[p/ship])
    |=  =pith
    (welp /[p/ship] pith)
::
++  manx-to-octs
  |=  man=manx
  (as-octt:mimes:html (en-xml:html man))
::
++  web
  |_  [=bowl:neo name=pith]
  ++  render
  =/  =lore:neo  q:(~(got by deps.bowl) %src)  
    ^-  manx
    ;html
      ;head
        ;*  old-standard-head-tags:serv
        ;*  standard-head-tags:serv
        :: ;script
        ::   ;+  ;/  %-  trip
        ::   '''
        ::   console.log('working')
        ::   function resizeIframe(iframe) {
        ::     if (iframe && iframe.tagName === 'IFRAME') {
        ::         iframe.onload = function() {
        ::           try{
        ::             iframe.style.height = iframe.contentWindow.document.body.scrollHeight + 'px';
        ::           } catch (e) {
        ::             console.error('Failed to resize iframe:', e);
        ::             }
        ::         };
        ::     }
        ::   }
        ::   document.querySelectorAll('.post').forEach(el => resizeIframe(el));
        ::   '''
        :: ==
      ==
      ;body
        =hx-ext  "dom-enc"
        ;main.p-page.mw-page.ma.fc.g2
          ::;+  post
          ;+  make-post
          ;+  feed-switch
          ;+  (feed lore)
          ;+  refresher
        ==
      ==
    ==
  ::
  ++  post 
  ;form.fr.jc.g2.p2
  =hx-post       (en-tape:pith:neo name)
  =hx-target     "closest .p-page"
  =hx-select     ".p-page"
  =hx-swap       "outerHTML"
  =head          "new-post"
    ;input.p1.bd1.br1
    =type          "text"
    =placeholder   "pith"
    =name          "post"
    =oninput       "this.setAttribute('value', this.value)"
    =required      ""
    =autocomplete  "off"
    ;
    ==
    ;input.p1.bd1.br1
    =type          "text"
    =placeholder   "ui-renderer*"
    =name          "renderer"
    =oninput       "this.setAttribute('value', this.value)"
    =autocomplete  "off"
    ;
    ==
    ;button.loader.p1.bd1.br1.b1
      ;span.loaded: post
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
  ::
  ++  make-post 
  ;form.fr.jc.g2.p2
  =hx-post       (en-tape:pith:neo name)
  =hx-target     "closest .p-page"
  =hx-select     ".p-page"
  =hx-swap       "outerHTML"
  =head          "make-post"
    ;textarea.p1.bd1.br1.basis-half
    =style         "min-height:100px"
    =type          "text"
    =placeholder   "Start your post here"
    =name          "post"
    =oninput       "this.setAttribute('value', this.value)"
    =required      ""
    =autocomplete  "off"
    ;
    ==
    ;button.loader.p1.bd1.br1.b1.hf
    =style  "align-self: end;"
      ;span.loaded: post
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
  ::
  ++  feed-switch
  ;div.fr.jc.g2.p2
    ;button.loader.p2.br1.b1.hover
    =onclick  
      """
      document.getElementById('all').classList.remove('hidden');
      document.getElementById('followed').classList.add('hidden');
      document.getElementById('published').classList.add('hidden');
      """
      ;span.loaded: all
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
    ;button.loader.p2.br1.b1.hover 
    =onclick  
      """
      document.getElementById('followed').classList.remove('hidden');
      document.getElementById('all').classList.add('hidden');
      document.getElementById('published').classList.add('hidden');
      """
      ;span.loaded: followed
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
    ;button.loader.p2.br1.b1.hover 
    =onclick  
      """
      document.getElementById('published').classList.remove('hidden');
      document.getElementById('all').classList.add('hidden');
      document.getElementById('followed').classList.add('hidden');
      """
      ;span.loaded: published
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
  ::
  ++  feed
    |_  =lore:neo
    ++  $
    ;div
      ;div#all
        ;+  (show-feed (get-all-feed-entries lore))
      ==
      ;div#published.hidden
        ;+  (show-feed (get-my-feed-entries lore our.bowl))
      ==
      ;div#followed.hidden
        ;+  (show-feed (get-follow-feed lore))
      ==
    ==
    ::
    ++  show-feed
    |=  kids=(list pith)
    ^-  manx
    ;div
      ;*
      %+  turn  (sort-by-date kids)
      |=  =pith:neo
      ::(got-vase-saga-by-pith:su lore pith)
      =/  idea=idea:neo  (~(got of:neo lore) pith)
      ::  XX:  vase isn't supposed to have %post check poke in timeline
      =/  some  !<([%post [renderer=stud:neo pith:neo]] q.q.saga.idea) 
      =/  post=[renderer=stud:neo pith=pith:neo]  +.some
      =/  renderer  ?@(renderer.post renderer.post %$)
      ;div
        ;p: {(tail (en-tape:pith:neo /[(head pith.post)]))}
        ;iframe.wf.bd2.post
          =style  "background-color: #eee; height: 300px;"
          =src    :(welp "/blue/" (trip renderer) (en-tape:pith:neo pith.post))
          ;
        ==
      ==
    ==
    ::
    ++  sort-by-date
    |=  kids=(list pith)
    %+  sort  kids
    |=  [a=pith b=pith]
    (gth ->:(tail a) ->:(tail b))
    --
  ++  refresher
  ;div
    =hx-get  (en-tape:pith:neo name)
    =hx-target     "#items"
    =hx-select     "#items"
    =hx-swap       "outerHTML"
    =hx-trigger    "every 10s"
    ;
  ==
  --
--  
