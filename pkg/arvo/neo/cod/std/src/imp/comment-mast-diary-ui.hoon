/@  ui-event
/@  txt
/@  diary-diff
/@  comment
/-  su=shrub-utils
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely %gift ~)
++  kids  *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^  %src  &  [pro/%diary (sy %diary-diff ~)]
      :+  ~  %y
      %-  my
      :~  [[|/%da |] only/%txt ~]
      ==
      :^  %meta  |  [pro/%comments (sy %meta-diff ~)]
      :+  ~  %y
      %-  my
      :~  [[|/%da |] pro/%comments (sy %meta-diff ~)]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    manx/!>((render (get-render-data bowl)))
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/sud !!)
      ::
        %ui-event
      =/  eve  !<(ui-event vaz)
      =/  here=pith:neo    p:(~(got by deps.bowl) %src)
      ?+  path.eve  ~|(missing-event-handler-for/path.eve !!)
        ::
          [%submit %diary-form ~]
        =/  dat=@t          (~(got by data.eve) 'diary-input')
        =/  dif=diary-diff  [%put-entry now.bowl dat]
        =/  dst=pith:neo    p:(~(got by deps.bowl) %src)
        ::=/  dif-meta  [(welp /comments dst) [%comment ~]]
        ::[/[p/our.bowl]/storage %poke storage-diff/!>(dif-meta)]
        :_  pail
        :~  [dst %poke diary-diff/!>(dif)]
        ==
        ::
          [%click %delete @ta ~]
        =/  key=@da         (slav %da i.t.t.path.eve)
        =/  dif=diary-diff  [%del-entry key]
        =/  dst=pith:neo    p:(~(got by deps.bowl) %src)
        :_  pail
        :~  [dst %poke diary-diff/!>(dif)]
        ==
        ::
          [%submit %meta %comment ~]
        =/  txt=@t  (~(got by data.eve) 'comment')
        =/  data-key  (~(got by data.eve) '/target/data-key')
        =/  key  
          ?~  data-key  ~
          /[da/(slav %da data-key)]
        =/  =pith:neo  
        %+  welp  (oust [0 2] p:(~(got by deps.bowl) %meta))
          key
        =/  dif  [%comment [now.bowl our.bowl txt]]
        ~&  dif/dif
        :_  pail
        :~  [/[p/our.bowl]/storage %poke storage-diff/!>([pith dif])]
        ==
        ::
      ==
      ::
        %rely
      `manx/!>((render (get-render-data bowl)))
      ::
    ==
  ::
  --
--
::
|%
::
+$  render-data
  $:  diary-entries=(list [date=@da =txt])
      selection=(unit @da)
      =bowl:neo
      comments=(set comment)
  ==
::
++  render
  |_  render-data
  ++  $
    ^-  manx
    ;html
      ;head
        ;meta(charset "utf-8");
        ;link
          =href  "/blue/blue-mime/{(scow %p our.bowl)}/static/feather"
          =rel  "stylesheet"
          ;
        ==
        ;script
          ;+  ;/
            %-  trip
            '''
            function setLoading(idStr) {
              let target = document.getElementById(idStr);
              target.classList.add('htmx-request');
            };
            function setLoaded(idStr) {
              let target = document.getElementById(idStr);
              target.classList.remove('htmx-request');
            };
            '''
        ==
      ==
      ;+  body
    ==
  ::
  ++  body
    ^-  manx
    ;body
      ;main.p-page.mw-page.ma.b1
        ;div.bd1.b0.p3.fc.g5
          ;h1.bold.f-3: MAST
          ;+  diary-form
          ;+  diary-items
        ==
        ;+  (meta-comments comments "")
      ==
    ==
  ::
  ++  diary-form
    ^-  manx
    ;form.fc.g2.as
      =event        "/submit/diary-form"
      =js-on-event  "setLoading('form-button');"
      ;textarea.p2.br1.bd1.wf
        =name  "diary-input"
        =required  ""
        =placeholder  "today, I ..."
        =rows  "5"
        ;*  ~
      ==
      ;button#form-button.loader.b1.p2.br1.bd1.wfc.hover
        ;span.loaded: create
        ;span.loading.s-2.f4
          ; loading
        ==
      ==
    ==
  ::
  ++  diary-items
    ^-  manx
    ;div.fc.g2
      ;*  %+  turn  diary-entries
          |=  [date=@da =txt]
          =/  key=tape  <date>
          ;div.fc.g2
            ;div.fr.af.g2
              =key  key
              =js-on-add  "setLoaded('form-button');"
              ;meta 
              =property  "title"
              =content  (swag [0 10] (trip txt))
              ;
              ==
              ;div.fc.g1.grow.br1.p-2.b1
                ;p.f3: {(pretty-date date)}
                ;p.bold: {(trip txt)}
              ==
              ;button.loader.p2.br1.b1.hover
                =event        "/click/delete/{key}"
                =js-on-event  "setLoading('{key}');"
                =id           key
                ;span.loaded
                  ; X
                ==
                ;span.loading.s-2.f4
                  ; loading
                ==
              ==
            ==
          ;+  (meta-comments (get-comments deps.bowl /[da/date]) key)
          ==
    ==
  ::
  ++  meta-comments
    |=  [meta=(set comment) key=tape]
    ~&  >>>  comments/~(tap in meta)
    ;div.fc.g1.p4
      ;div.fc.ae.p1
        ;button.bd1.br3.b2
        =onclick  "this.parentNode.nextSibling.classList.toggle('hidden');"
          ;span: +
        ==
      ==
      ;form.fr.hidden.bd1.br1.p1.g1
      =event  "/submit/meta/comment"
      =data-key  key
      =return    "/target/data-key"
        ;input.p1.grow
        =type  "text"
        =required  ""
        =name  "comment"
        =placeholder  "comment"
        ;
        ==
        ;button.loader.bd1.br1.p1
        =onclick  "this.parentNode.classList.add('hidden');"
        =type  "submit"
          ;span.loaded:  send
          ;span.loading:  loading
        ==
      ==
      ;*  
      ::  add sorting by date
      %+  turn  ~(tap in meta)
      |=  =comment
      ~&  comment
      ^-  manx
      ;div.fc.g1.bd1.br1.p2
        ;div.fr.jb.p1
          ;p.f1: {(pretty-date when.comment)}
          ;p.f1: {(scow %p from.comment)}
        ==
        ;h2.tc.p1.f1: {(trip txt.comment)}
      ==
    ==
  ::
  --
::  ::  ::  ::  ::  ::  ::  ::  ::  ::
++  get-render-data
  |=  =bowl:neo
  ^-  render-data
  :*  (get-diary-entries deps.bowl)
      (get-selection kids.bowl)
      bowl
      (get-comments deps.bowl /)
  ==
::
++  get-diary-entries
  |=  deps=(map term (pair pith:neo lore:neo))
  ^-  (list [date=@da =txt])
  =/  data=(unit (pair pith:neo lore:neo))
    (~(get by deps) %src)
  ?~  data  ~|(%no-diary !!)
  =/  entries=(list [date=@da =txt])
    %+  turn  ~(tap by kid.q.u.data)
    |=  (pair iota:neo (axal:neo idea:neo))
    ?>  &(?=(^ p) ?=(%da -.p) ?=(^ fil.q))
    [+.p !<(txt q.pail.u.fil.q)]
  %+  sort  entries
  |=  (pair [date=@da =txt] [date=@da =txt])
  (gth date.p date.q)
::
++  get-selection
  |=  kids=(axal:neo idea:neo)
  ^-  (unit @da)
  =/  data=(unit (axal:neo idea:neo))
    (~(get by kid.kids) %selection)
  ?~  data  ~
  ?~  fil.u.data  ~
  [~ !<(@da q.pail.u.fil.u.data)]
::
++  pretty-date  :: from diary-htmx
  |=  date=@da
  ^-  tape
  =/  d  (yore date)
  "{(y-co:co y:d)}-{(y-co:co m:d)}-{(y-co:co d:t:d)}"
::
++  get-comments
  |=  [deps=(map term (pair pith:neo lore:neo)) =pith:neo]
  ^-  (set comment)
  =/  meta=(pair pith:neo lore:neo)  (~(got by deps) %meta)
  =/  uvase=(unit vase)  (get-vase-saga-by-pith:su q.meta pith)
  ?~  uvase  ~
  !<((set comment) (need uvase))
::
--
