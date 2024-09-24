/@  ui-event
/@  reaction
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
  :~  :^  %src  |  [pro/%reactions (sy %meta-diff ~)]
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
      =/  diff
      [(oust [0 2] p.meta) [%reaction ~]]
      =/  id  (en-tape:pith:neo p:meta)
      :_  manx/!>((render ~ id bowl))
      ~
      :::~  [/[p/our.bowl]/storage %poke storage-diff/!>(diff)]
      ::==
    =/  render-data  (get-reactions deps.bowl)
    [~ manx/!>((render -.render-data +.render-data bowl))]
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/stud !!)
        %ui-event
      =/  eve  !<(ui-event vaz)
      ?>  
      ?|  
        ?=([%change %meta %reaction ~] path.eve)
        ?=([%click %meta %reaction ~] path.eve)
      ==
      =/  emoji=@t  (~(got by data.eve) '/target/value')
      =/  create=pith:neo  (oust [0 2] p:(~(got by deps.bowl) %src))
      =/  dif  [%reaction (sy [our.bowl emoji] ~)]
      :_  pail
      :~  
        [/[p/our.bowl]/storage %poke storage-diff/!>([create dif])]
      ==
        %rely
      =/  render-data  (get-reactions deps.bowl)
      [~ manx/!>((render -.render-data +.render-data bowl))]
    ==
  ::
  --
--
::
|%
++  render
  |_  [meta=(set reaction) id=tape =bowl:neo]
  ++  $
    ^-  manx
    ;div.fc.g1
    =style  "margin-top: 0.5rem;"
      ;+  script
      ;+  event-listener
      ;+  buttons
    ==
  ::
  ++  script 
  ;script 
  =type  "module" 
  =src  "https://cdn.jsdelivr.net/npm/emoji-picker-element@^1/index.js"
  ;
  ==
  ::
  ++  event-listener 
  ;script 
    ;+  ;/
      """
      document.addEventListener('DOMContentLoaded', () => \{
        document.getElementById('picker-{id}').addEventListener('emoji-click', event => \{
          let reactionInput = document.getElementById('picker-{id}').parentNode.children[0]
          reactionInput.setAttribute('value', event.detail.unicode);
          const changeEvent = new Event('change', \{
                      bubbles: true,
                      cancelable: true
                  });
          reactionInput.dispatchEvent(changeEvent);
        });
      });
      """ 
  ==
  ::
  ++  buttons 
    ;div.fc.je.g1
      ;div.fr.je.g1
      ;+  reactions-view
        ;button.bd1.br3.b2.hover
        =onclick  "this.parentElement.nextSibling.classList.toggle('hidden');"
          ;span
          =style  "padding: 1px;"
          ; ❤️
          ==
        ==
      ==
      ;div.hidden.fr.je
      =style  "position: relative;"
        ;input.hidden
        =event   "/change/meta/reaction"
        =return  "/target/value"
        ;
        ==
        ;emoji-picker
        =style  "position: absolute; height: 250px; --num-columns: 5; --background: rgba(0, 0, 0, 0.1); --border-radius: var(--br3);"
        =id  (weld "picker-" id)
        ;
        ==
      ==
    ==
  ::
  ++  reactions-view
    ;div.fr.g1
    =id  (welp "react" id)
      ;*  
      =/  reactions=(list [reaction=@t num=@ud data=(list reaction)])
        ::%+  sort  
          (sort-reactions ~(tap in meta))  
        ::aor
      %+  turn  reactions
      |=  r=[reaction=@t num=@ud data=(list reaction)]
      ^-  manx
      ;button.bd1.br3.b2.hover.fr.g1
      =event   "/click/meta/reaction"
      =return  "/target/value"
      =value   (trip reaction.r)
        ;span
        =style  "padding: 1px;"
        ; {(trip reaction.r)}
        ==
        ;+  ?.  (gth num.r 1)
          ;div.hidden;
        ;span: {<num.r>}
      ==
    ==
  --
::
++  get-reactions
  |=  deps=(map term (pair pith:neo lore:neo))
  ^-  [(set reaction) tape]
  =/  meta=(pair pith:neo lore:neo)  (~(got by deps) %src)
  =/  uvase=(unit vase)  ::(get-vase-saga-by-pith:su q.meta /)
    =/  idea=(unit idea:neo)  (~(get of:neo q.meta) /)
    ?~  idea  ~
    `q.q.saga:(need idea)
  =/  here  (en-tape:pith:neo p:(~(got by deps) %src))
  ?~  uvase  `here
    :-  !<((set reaction) (need uvase))
        here
::
++  sort-reactions
  |=  reactions=(list reaction)
  ^-  (list [reaction=@t num=@ud data=(list reaction)])
  %-  sort 
    :_  aor
    %~  tap  in 
    %-  silt
    %+  turn  reactions
    |=  r=reaction
    ^-  [@t [@ud (list reaction)]]
    =/  match
      %+  skim  reactions 
      |=  b=reaction  
      =(reaction.r reaction.b) 
    [reaction.r [(lent match) match]]
--