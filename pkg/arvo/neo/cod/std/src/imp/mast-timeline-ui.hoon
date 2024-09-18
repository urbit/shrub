/@  ui-event
/@  timeline-diff
/-  feather-icons
/-  serv=sky-server
/-  su=shrub-utils
/-  fp=feed-parser
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely ~)
++  kids
  *kids:neo
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
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  =lore:neo  q:(~(got by deps.bowl) %src)
    [~ manx/!>((render lore bowl))]
  ::
  ++  poke
    |=  [=stud:neo =vase]
    ^-  (quip card:neo pail:neo)
    ::?=(%ui-event stud)
    ?+  stud  ~|(bad-stud/stud !!)
        %ui-event
      =/  event  !<(ui-event vase)
      ?>  ?=([%submit %make-post ~] path.event)
      =/  here  p:(~(got by deps.bowl) %src)
      =/  =cord  (~(got by data.event) 'post')
      =/  renderer=pith  /blue/post-link-ui
      =/  pith  /[p/our.bowl]/posts/[da/now.bowl] 
      =/  quote-post-piths  (get-pith:fp cord)
      :_  pail
      ?~  quote-post-piths
        :~  [here %poke [%timeline-diff !>([%post [renderer pith]])]]
            [pith %make %txt `txt/!>(cord) ~]
        ==
      :~  [here %poke [%timeline-diff !>([%make-post cord])]]
      ==
        %rely
      =/  =lore:neo  q:(~(got by deps.bowl) %src)
      [~ manx/!>((render lore bowl))]
    ==
  --
--
::
|%
++  render
  |_  [=lore:neo =bowl:neo]
  ++  $
    ^-  manx
    ;html
      ;head
        ;*  old-standard-head-tags:serv
        ;*  standard-head-tags:serv
        ;+  script
      ==
      ;body
        ;+  main
      ==
    ==
  ++  main
    ^-  manx
    ;main.p-page.mw-page.ma.fc.g2
    =id  "0"
      ;+  make-post
      ;+  feed-switch
      ;+  feed
    ==
  ::
  ++  script 
    ;script
    =defer  ""
      ;+  ;/  %-  trip
      '''
      function resizeIframe(obj) {
      let scrollHeight = obj.contentWindow.document.documentElement.scrollHeight;
        if (scrollHeight > 300) {
          obj.style.height = '300px';
        } else {
          obj.style.height = scrollHeight + 2 + 'px';
        }
      };
      function receiveMessage(event) {
        if (event.origin === window.location.origin){
          if(event.data.messagetype === 'new-wind'){
          window.parent.postMessage(event.data, window.location.origin)
          }
        }else{
        return;
        }
      }
      window.addEventListener('message', receiveMessage, false);
      '''
    ==
  ::
  ++  make-post 
    ;form.fr.jc.g2.p2
    =event  "/submit/make-post"
      ;textarea.p3.bd1.br1.grow
      =style         "min-height:10em"
      =type          "text"
      =placeholder   "Start your post here"
      =name          "post"
      =oninput       "this.setAttribute('value', this.value)"
      =required      ""
      =autocomplete  "off"
      ;
      ==
      ;button.loader.p1.bd1.br1.b1.hf.hover
      =style  "align-self: end;"
      =type  "submit"
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
  =/  sorted-posts  (sort-by-date kids)
  ^-  manx
  ;div.fc.g2
    ;*
    %+  turn  sorted-posts
    |=  =pith:neo
    =/  idea=idea:neo  (~(got of:neo lore) pith)
    =/  post  !<([renderer=pith:neo pith=pith:neo] q.q.saga.idea)
    =/  post-date  ;;  @da  +:(rear pith)
    ;div.wf.fc
      ;div.fr.jb
        ;p.p1: {(tail (en-tape:pith:neo /[(head pith.post)]))}
        ;p:  {(pretty-date post-date bowl)}
      ==
      ;iframe.wf.bd2.post.br2.b2.grow   
      =style   "max-height: 300px; overflow: auto;"
      =onload  "resizeIframe(this)"
      =src  (en-tape:pith:neo (welp renderer.post pith.post))
        ;
      ==
      ;imp_mast-meta-comment: {(en-tape:pith:neo (welp /[p/our.bowl]/storage/comments/[p/our.bowl]/home/feed pith))}
    ==
  ==
  ::
  ++  sort-by-date
  |=  kids=(list pith)
  %+  sort  kids
  |=  [a=pith b=pith]
  (gth ->:(tail a) ->:(tail b))
  ::
  --
::
++  pretty-date
  |=  [date=@da =bowl:neo]
  ^-  tape
  =/  d  (yore date)
  =/  months
    ^-  (list tape)
    :~
      "Jan"
      "Feb"
      "Mar"
      "Apr"
      "May"
      "Jun"
      "Jul"
      "Aug"
      "Sep"
      "Oct"
      "Nov"
      "Dec"
    ==
  ?:  &(=(m:d m:(yore now.bowl)) =(d:t:d d:t:(yore now.bowl)))
    "{(y-co:co h:t:d)}:{(y-co:co m:t:d)}"
  "{(y-co:co h:t:d)}:{(y-co:co m:t:d)} {(snag (dec m:d) months)}{(y-co:co d:t:d)}"
::
++  get-all-feed-entries 
  |=  =lore:neo
  ^-  (list pith)
  %+  skim  (kidz-at-pith:su / lore)
  |=  =pith
  (gth (lent pith) 1)
::
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
--