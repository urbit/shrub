/@  deck
/-  _/feather-icons
:-  [%deck %htmx]
|=  dek=deck
|=  =bowl:neo
|^
  ;div.deck.fc.b0.wf.hf
    =tabindex  "0"
    =onkeydown  "deckHandleKey(event);"
    ;+  controls
    ;div.arena.b0.frw.hf
      ;+  index
      ;+  slides
    ==
    ;+  script
  ==
++  here-url  "/neo/hawk{(en-tape:pith:neo here.bowl)}"
++  post-url  "{here-url}?stud=deck-diff"
++  controls
  ;div.p1.frw.g2.ac.je
    ;button.p1.br1.bd1.b1.toggled
      ; edit
    ==
    ;button.p1.br1.bd1.b1
      ; present
    ==
    ;button.p1.br1.bd1.b1
      =onclick  "$(this).closest('.deck').find('.arena').first()[0]?.requestFullscreen();"
      ; fullscreen
    ==
  ==
++  index
  ;div.p2.fc.g2.wfc.hf
    ;+  new-slide
    ;div.fc.g1
      ;*
      =<  p
      %^    spin
          slides.dek
        1
      |=  [s=@ux a=@]
      :_  +(a)
      =/  tog  ?:(=(s current.dek) "toggled" "")
      ;button
        =type  "button"
        =class  "p3 br2 bd1 hover b1 loader {tog}"
        =onclick
          """
          $(this).closest('.deck').find('[slide-view]').addClass('hidden')
            .filter('[slide-view=\\'{(scow %ud a)}\\']').removeClass('hidden');
          $(this).siblings().removeClass('toggled');
          $(this).addClass('toggled');
          """
        =hx-post  post-url
        =hx-swap  "none"
        =head  "set-current"
        =slide  (scow %ux s)
        ;span.loaded: {<a>}
        ;span.loading
          ;+  loading.feather-icons
        ==
      ==
    ==
  ==
++  new-slide
  ;button.loader.hover.p2.br1.bd1.b1
    =type  "button"
    =hx-post  post-url
    =hx-target  "find .loading"
    =hx-swap  "outerHTML"
    =head  "new-slide"
    ;span.loaded.fr.g2.ac.jc
      ;+  add.feather-icons
      ;span: new slide
    ==
    ;span.loading
      ;+  loading.feather-icons
    ==
  ==
++  slides
  ;div.fc.grow.hf
    ;*
    =<  p
    %^    spin
        slides.dek
      1
    |=  [s=@ux a=@]
    :_  +(a)
    =/  hid  ?:(=(s current.dek) "" "hidden")
    ;div
      =class  "wf hf {hid}"
      =slide-view  (scow %ud a)
      =hx-get  "{here-url}/{(scow %ux s)}?no-save"
      =hx-history  "false"
      =hx-target  "this"
      =hx-select  "[stud='sail']"
      =hx-swap  "innerHTML"
      =hx-trigger  "load once"
      ;span.loaded(style "opacity: 0;"): sure
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
++  script
  ;script
    ;+  ;/  %-  trip
    '''
    function deckHandleKey(event) {
      let key = event.key;
      let current = document.activeElement?.nodeName?.lower();
      console.log(current);
      if (['input', 'textarea'].includes(current)) return;
      let handled = ['ArrowLeft', 'ArrowRight', ' ']
      if (handled.includes(key)) {
        event.preventDefault();
        event.stopPropagation();
        if (key == 'ArrowLeft') {
          console.log('prev slide')
        } else if (key == 'ArrowRight' || key == ' ') {
          console.log('next slide')
        }
      }
    }
    '''
  ==
--
