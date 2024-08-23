/@  ui-event
/-  su=shrub-utils
/-  feather-icons
/*  feather
=<
^-  kook:neo
|%
++  state  pro/%manx
++  poke   (sy %ui-event %tag-render ~)
++  kids  *kids:neo
++  deps
  %-  ~(gas by *band:neo)
  :~  :-  %src
      ^-  fief:neo
      :-  req=&
      ^-  quay:neo
      :-  [pro/%root ~]
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  &
          `lash:neo`[[%any ~] ~]
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
    :-  ~
    manx/!>((render ~ lore))
  ::
  ++  poke
    |=  [sud=stud:neo =vase]
    ^-  (quip card:neo pail:neo)
    =/  =lore:neo  q:(~(got by deps.bowl) %src)
    ?+  sud  ~|(bad-stud/sud !!)
        %ui-event
      =/  event  !<(ui-event vase)
      ?+  path.event  ~|(missing-event-handler-for/path.event !!)
          [%input %search ~]
        ~&  >  'got input search'
        ::  for now just string of one tag
        =/  tag=@tas  
          ;;  @tas  (~(got by data.event) '/target/value')
        =/  tagged=(list [pith:neo stud:neo])
          (get-tagged lore tag)
        ~&  >>  tagged
        ::  get kids from dependency
        [~ manx/!>((render tagged lore))]
        ::
          [%submit %search ~]
        =/  tag=@tas  
          ;;  @tas  (~(got by data.event) 'search')
        =/  tagged=(list [pith:neo stud:neo])
          (get-tagged lore tag)
        ~&  >>  tagged
        [~ manx/!>((render tagged lore))]
        ::
          [%submit %tag ~]
        =/  tag  ;;  @tas  (~(got by data.event) 'tags')
        :: =/  tagged  (get-tagged lore tag)
        =/  to  
        %+  welp  /tags/[p/our.bowl]
        (pith-to-hoon bowl (~(got by data.event) 'pith'))
        :_  pail
        :~
          [/[p/our.bowl]/storage %poke storage-diff/!>([to [%tags (sy tag ~)]])]
          [here.bowl %poke %tag-render !>(tag)]
        ==
      ==
      ::
        %tag-render
      =/  tag  !<(@tas vase)
      =/  tagged  (get-tagged lore tag)
      [~ manx/!>((render tagged lore))]
    ==
  --
--
::
|%
++  render
  |_  [meta=(list [pith:neo stud:neo]) =lore:neo]
  ++  $
  ~&  >>>  "render called"
    ^-  manx
    ;html
      ;head
        ;meta(charset "utf-8");
        ;style: {(trip feather)}
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
  ::  XX:  fix loading spinner if searched for nothing twise in row
  ++  body
  ;body.fr.jc.wf
    =style  "margin-top: 30px;"
    ;main.fc.ac.wf.p4
      ;div.fc.ac.g1.wf.hf
        ;+  top-menu
        ;+  add-tag
        ;+
        =;  m
          ?.  (gth (lent meta) 2)
            m(a.g [[%class "frw g1 wf hf"] a.g.m])
          m(a.g [[%class "frw g1 wf"] a.g.m])
        ^-  manx
        ;div
        ;*  
          %+  turn  meta 
          |=  [=pith:neo =stud:neo]
          ?>  ?=(@tas stud)
          =/  imp  (kids-at-pith:su lore /cod/std/out/imp)
          =/  ui  (en-pith:su (crip :(welp "/mast-" (trip stud) "-ui")))
          =/  has-ui  (find ~[ui] imp)
          ~&  >>>  has-ui
          ;div.p2.grow
          =js-on-add  "setLoaded('search-button');"
          =js-on-delete   "setLoaded('search-button'); console.log('delete')"
          =style  "min-width: 49%;"
          ;+
            ?~  has-ui
              ~&  >  (en-tape:pith:neo (welp /hawk (tail (tail pith))))
              ^-  manx
              ;div.p2.bd1.grow
                ;iframe.bd0.wf.hf
                =src  (en-tape:pith:neo (welp /hawk (tail (tail pith))))
                ;
                == 
              ==
            ;div.p2.bd1.grow
              ;+
                =;  m
                    m(n.g [%imp ;;(@tas (head ui))])
                  ^-  manx
                  ;div: {(en-tape:pith:neo (tail (tail pith)))}
            ==
          ==
        ==
      ==
    ==
  ==
  ::
  ++  top-menu
  ^-  manx
  ;div.fr.g3
    ;form.fr.g1
    =js-on-event  "setLoading('search-button');"
    =event        "/submit/search"
      ;input.bd1.br1.p2.auto
      =type           "text"
      =placeholder    "tag search"
      =autocomplete   "off"
      =name           "search"
      =oninput        "this.setAttribute('value', this.value); this.parentNode.nextSibling.setAttribute('value', this.value); this.parentNode.parentNode.nextSibling.children[2].setAttribute('value', this.value);"
      ::=return         "/target/value"
      ::=event          "/input/search"
      ;
      ==
      ;button.bd1.br1.hover.b1.loader
      =id    "search-button"
      =type  "submit"
        ;span.loaded: search
        ;span.loading
          ;+  loading.feather-icons
        ==
      ==
    ==
    ;button.bd1.br1.hover.b0
    =onclick  "this.parentNode.nextSibling.classList.toggle('hidden'); this.parentNode.nextSibling.children[2].setAttribute('value', this.value);"
      ;span: +
    ==
  ==
  ::
  ++  add-tag
  ^-  manx
  ;form.fr.g1.hidden
  =event  "/submit/tag"
    ;input.bd1.br1.p2
    =type         "text"
    =required     ""
    =name         "pith"
    =placeholder  "/pith/to/shrub"
    =list         "piths"
    ;
    ==
    ;+  piths
    ;input.bd1.br1.p2
    =type         "text"
    =required     ""
    =name         "tags"
    =placeholder  "tag"
    ;
    ==
    ;button.bd1.br1.p2.hover.loader.b1
    =type  "submit"
      ;span.loaded:  add
      ;span.loading:  loading
    ==
  ==
::
  ++  piths
  =/  kids  (kidz-at-pith:su /home lore)
  ^-  manx
  ;datalist.hidden
  =id  "piths"
    ;*  
    %+  turn  kids
    |=  =pith:neo
    =/  tape  (en-tape:pith:neo pith)
    ^-  manx
    ;option
    =value  tape
      ;span:  {tape}
    ==
  ==
  --
::
++  pith-to-hoon
  |=  [=bowl:neo =cord]
  ^-  pith:neo
  !<  pith:neo
  %+  slap  :(slop !>(..zuse) !>(bowl) !>(neo))
  %-  ream  cord
::
++  get-tagged
  |=  [=lore:neo tag=@tas]
  ^-  (list [pith:neo stud:neo])
  =/  kidz  (kidz-at-pith:su /storage/tags lore)
  =/  tagged
    %+  skim  kidz
        |=  =pith:neo
        =/  tags  !<((set @tas) (got-vase-by-pith:su lore pith))
        (~(has in tags) tag)
  ?~  tagged  ~
  %+  turn  tagged
  |=  pit=pith:neo
  ^-  [pith:neo stud:neo]
  ~&  (tail (tail pit))
  ~&  >  p:(got-pail-saga-by-pith:su lore /home)
  :-  pit
  p:(got-pail-saga-by-pith:su lore `pith:neo`(tail (tail (tail pit))))
--