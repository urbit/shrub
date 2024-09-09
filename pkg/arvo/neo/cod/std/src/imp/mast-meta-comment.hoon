/@  ui-event
/@  comment
/-  su=shrub-utils
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^  %src  |  [pro/%comments (sy %meta-diff ~)]
      ~
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  meta=(pair pith:neo lore:neo)  (~(got by deps.bowl) %src)
    ?~  (get-vase-by-pith:su q.meta /)
      ~&  vase-null/p.meta
      =/  diff
      [(oust [0 2] p.meta) [%comment ~]]
      :_  manx/!>((render ~))
      :~  [/[p/our.bowl]/storage %poke storage-diff/!>(diff)]
      ==
    =/  comments  (get-comments deps.bowl)
    [~ manx/!>((render comments))]
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/stud !!)
        %ui-event
      =/  eve  !<(ui-event vaz)
      ?>  ?=([%submit %meta %comment ~] path.eve)
      =/  txt=@t  (~(got by data.eve) 'comment')
      =/  create=pith:neo  (oust [0 2] p:(~(got by deps.bowl) %src))
      ~&  >  create-at-pith/create
      =/  dif  [%comment (sy [now.bowl our.bowl txt] ~)]
      ~&  dif/dif
      :_  pail
      :~  
        [/[p/our.bowl]/storage %poke storage-diff/!>([create dif])]
      ==
        %rely
      =/  comments  (get-comments deps.bowl)
      [~ manx/!>((render comments))]
    ==
  ::
  --
--
::
|%
++  render
  |_  meta=(set comment)
  ++  $
    ^-  manx
    ;div.fc.g1.m0
      ;div.fr.je.p1.g1
        ;button.bd1.br3.b2.hover
        =onclick  "this.parentNode.nextSibling.classList.toggle('hidden');"
          ;span: +
        ==
        ;+  
        ?~  meta  
            ;div.hidden;
        ;button.bd1.br3.b2.hover
        =onclick  "this.parentNode.nextSibling.nextSibling.classList.toggle('hidden');"
          ;span: 💬
        ==
      ==
      ;form.fr.hidden.bd1.br1.p1.g1.b2
      =event  "/submit/meta/comment"
        ;input.p1.grow.b0
        =type  "text"
        =required  ""
        =name  "comment"
        =placeholder  "comment"
        ;
        ==
        ;button.loader.bd1.br1.p1.b0.hover
        =onclick  "this.parentNode.classList.add('hidden');"
        =type  "submit"
          ;span.loaded:  send
          ;span.loading:  loading
        ==
      ==
      ;div.hidden
        ;*  
        =/  comments  ~(tap in meta)
        =/  sorted  
          %+  sort  comments
          |=  [a=comment b=comment]
          (gte when.a when.b)
        %+  turn  sorted
        |=  =comment
        ^-  manx
        ;div.fc.bd1.br1.p2
          ;div.fr.jb.p1
            ;p.f1: {(pretty-date when.comment)}
            ;p.f1: {(scow %p from.comment)}
          ==
          ;h2.tc.p1.f1: {(trip txt.comment)}
        ==
      ==
    ==
  --
::
++  get-comments
  |=  deps=(map term (pair pith:neo lore:neo))
  ^-  (set comment)
  =/  meta=(pair pith:neo lore:neo)  (~(got by deps) %src)
  =/  uvase=(unit vase)  ::(get-vase-saga-by-pith:su q.meta /)
    =/  idea=(unit idea:neo)  (~(get of:neo q.meta) /)
    ?~  idea  ~
    `q.q.saga:(need idea)
  ?~  uvase  ~
    !<((set comment) (need uvase))
::
++  pretty-date  :: from diary-htmx
  |=  date=@da
  ^-  tape
  =/  d  (yore date)
  "{(y-co:co y:d)}-{(y-co:co m:d)}-{(y-co:co d:t:d)}"
::
--