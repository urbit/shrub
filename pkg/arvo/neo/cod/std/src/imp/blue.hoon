/@  eyre-reqs
/-  serv=sky-server
/-  srv=server
/-  su=shrub-utils
^-  kook:neo
|%
++  state  pro/%sig
++  poke   (sy %eyre-task ~)
++  kids
  :+  ~  %y
  %-  malt
  :~  :-  [|/%ta |]
      [pro/%eyre-task (sy %rely ~)]
  ==
++  deps   
  %-  ~(gas by *band:neo)
  :~  :-  %src
      ^-  fief:neo
      :-  req=&
      ^-  quay:neo
      :-  [only/%sig ~]
      ^-  (unit port:neo)
      :+  ~  %y
      %-  ~(gas by *lads:neo)
      :~  :-  [|/%tas |]
          `lash:neo`[only/%hoon ~]
      ==
  ==
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  pal=(unit pail:neo)
    :_  sig/!>(~)
    =/  =pith:neo  #/[p/our.bowl]/$/eyre
    :~  [pith %poke eyre-req/!>([%connect [~ ~[%blue]] here.bowl])]
        [pith %poke eyre-req/!>([%connect [~ ~[%sky]] here.bowl])]
    ==
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+    stud  ~|(bad-stud/stud !!)
        %eyre-task
      =+  !<(=task:eyre:neo vax)
      =/  [eyre-id=@ta req=inbound-request:eyre]  task
      =/  inner=pith:neo
        (pave:neo pax:(parse-url-frfr:serv request.req))
      ::
      ::  redirect /sky to the mast renderer
      ?:  =(%sky (snag 0 inner))
        :_  sig/!>(~)
        =/  =pith:neo  #/[p/our.bowl]/$/eyre
        =/  loc  (crip "/mast/mast-sky-ui/{(scow %p our.bowl)}/sky")
        :~
          [pith %poke eyre-sign/!>([eyre-id %head 307 ['Location' loc]~])]
          [pith %poke eyre-sign/!>([eyre-id %data ~])]
          [pith %poke eyre-sign/!>([eyre-id %done ~])]
        ==
      ::
      ::  handle everything under /blue
      =/  renderer  (snag 1 inner)
      :: =/  lore  q:(~(got by deps.bowl) %src)
      :: =/  has-renderer  
      ::   !=(~ (get-pail-saga-by-pith:su lore /[renderer]))
      ?^  renderer
        ~|('Second iota in URL must be a @tas.' !!)
      :: ?.  has-renderer 
      ::   :_  sig/!>(~)
      ::   =/  =pith:neo  #/[p/our.bowl]/$/eyre
      ::   =/  loc  
      ::     (en-cord:pith:neo (welp /tree (tail (tail inner))))
      ::   :~
      ::     [pith %poke eyre-sign/!>([eyre-id %head 307 ['Location' loc]~])]
      ::     [pith %poke eyre-sign/!>([eyre-id %data ~])]
      ::     [pith %poke eyre-sign/!>([eyre-id %done ~])]
      ::   ==
      :_  sig/!>(~)
      :~  :*  (welp here.bowl [[%ta eyre-id] ~])
              %make
              renderer
              `[%eyre-task !>(task)]
              (~(gas by *crew:neo) src/(slag 2 inner) ~)
          ==
      ==
    ==
  --
--
