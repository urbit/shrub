/@  ui-event
/-  su=shrub-utils
/*  feather
=<
^-  kook:neo
|%
++  state  pro/%manx
++  poke   (sy %ui-event ~)
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
    ?+  sud  ~|(bad-stud/sud !!)
      ::
        %ui-event
      =/  event  !<(ui-event vase)
      =/  =lore:neo  q:(~(got by deps.bowl) %src)
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
          [%submit %tag ~]
        =/  tag  ;;  @tas  (~(got by data.event) 'tags')
        =/  tagged  (get-tagged lore tag)
        =/  to  
        %+  welp  /tags/[p/our.bowl]
        (pith-to-hoon bowl (~(got by data.event) 'pith'))
        :_  manx/!>((render tagged lore))
        :~
          [/[p/our.bowl]/storage %poke storage-diff/!>([to [%tags (sy tag ~)]])]
        ==
      ==
    ==
  --
--
::
|%
++  render
  |_  [meta=(list [pith:neo stud:neo]) =lore:neo]
  ++  $
    ^-  manx
    ;html
      ;head
        ;meta(charset "utf-8");
        ;style: {(trip feather)}
      ==
      ;body.fr.jc.wf
        =style  "margin-top: 30px;"
        ;main.fc.ac
        =style  "width: 30rem;"
          ;div.fc.ac.g1
            ;input.bd1.br1.p2.auto
            =type           "text"
            =placeholder    "tag search"
            =autocomplete   "off"
            =return         "/target/value"
            =event          "/input/search"
            ;
            ==
            ;+  (add-tag lore)
            ;div.fc.g1
            ;*  
              %+  turn  meta 
              |=  [=pith:neo =stud:neo]
              ::;div.fc.g1
              ::  here we could check if imp file for current stud exist 
              ::  if had root dep 
              ?>  ?=(@tas stud)
              =/  imp  (kids-at-pith:su lore /cod/std/out/imp)
              =/  ui  (en-pith:su (crip :(welp "/mast-" (trip stud) "-ui")))
              =/  has-ui  (find ~[ui] imp)
              ~&  >>>  has-ui
              ?~  has-ui
                ~&  >  (en-tape:pith:neo (welp /hawk (tail (tail pith))))
                ^-  manx
                ;div
                  ;iframe.bd0.wf
                  =src  (en-tape:pith:neo (welp /hawk (tail (tail pith))))
                    ;
                  == 
                ==
              ;div.p2
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
  ++  add-tag
  |=  =lore:neo
  ;form.fr.g1
  =event  "/submit/tag"
    ;input.bd1.br1.p2
    =type         "text"
    =required     ""
    =name         "pith"
    =placeholder  "/pith/to/shrub"
    =list         "piths"
    ;
    ==
    ;+  
    =/  kids  (kidz-at-pith:su / lore)
    (piths kids)
    ;input.bd1.br1.p2
    =type         "text"
    =required     ""
    =name         "tags"
    =placeholder  "tag"
    ;
    ==
    ;button.bd1.br1.p2.hover.loader
    =type  "submit"
      ;span.loaded:  add
      ;span.loading:  loading
    ==
  ==
  ++  piths
  |=  kids=(list pith:neo)
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
  =/  kidz  (kidz-at-pith:su /storage lore)
  =/  tagged
    %+  skim  kidz
        |=  =pith:neo
        =/  tags  !<((set @tas) (got-vase-by-pith:su lore pith))
        (~(has in tags) tag)
  %+  turn  tagged
  |=  pit=pith:neo
  ^-  [pith:neo stud:neo]
  ~&  (tail (tail pit))
  ~&  >  p:(got-pail-saga-by-pith:su lore /home)
  :-  pit
  p:(got-pail-saga-by-pith:su lore `pith:neo`(tail (tail (tail pit))))
--