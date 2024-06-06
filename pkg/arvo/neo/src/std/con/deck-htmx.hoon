/@  deck
/-  _/feather-icons
:-  [%deck %htmx]
|=  dek=deck
|=  =bowl:neo
|^
  ;div.deck.fc.b0.wf.hf.relative
    =current  (scow %ud +((fall (find ~[current.dek] slides.dek) 0)))
    =lastSlide  (scow %ud (lent slides.dek))
    ;+  controls
    ;div.arena.b0.frw.hf
      =onkeydown  "deckHandleKey(event, $(this).closest('.deck'));"
      =tabindex  "0"
      ;+  index
      ;+  slides
    ==
    ;+  script
    ;+  style
  ==
++  here-url  "/neo/hawk{(en-tape:pith:neo here.bowl)}"
++  post-url  "{here-url}?stud=deck-diff"
++  controls
  ;div.p1.frw.g2.ac.je.absolute.z2
    =style  "top:0; right:0;"
    ;button.p1.br1.bd1.b1.hover
      =onclick  "deckPrevious($(this).closest('.deck'))"
      ;+  chevron-left.feather-icons
    ==
    ;span.control-count.p1.br1.b0
      ; {(scow %ud +((fall (find ~[current.dek] slides.dek) 0)))}
    ==
    ;button.p1.br1.bd1.b1.hover
      =onclick  "deckNext($(this).closest('.deck'))"
      ;+  chevron-right.feather-icons
    ==
    ;div(style "width: 30px;");
    ;button.p1.br1.bd1.b1.toggled.hover
      =onclick  "deckEdit(this, event);"
      ; edit
    ==
    ;button.p1.br1.bd1.b1.hover
      =onclick  "deckPresent(this, event);"
      ; present
    ==
    ;button.p1.br1.bd1.b1.hover
      =onclick
        """
        let a = $(this).closest('.deck').find('.arena')[0];
        deckPresent(this.previousElementSibling, event);
        a?.requestFullscreen();
        a?.focus();
        """
      ; fullscreen
    ==
  ==
++  index
  ;div.index.p-page.fc.g5.wfc.hf.scroll-y.relative
    ;+  new-slide
    ;div.fc.g3
      ;*
      =<  p
      %^    spin
          slides.dek
        1
      |=  [s=@ux a=@]
      :_  +(a)
      =/  tog  ?:(=(s current.dek) "toggled" "")
      =/  hid  ?:(=(s current.dek) "" "hidden")
      ;div.fc.af.jc.g1
        ;button
          =type  "button"
          =class  "p3 br2 bd1 hover b1 loader {tog}"
          =onclick  "deckSetCurrent($(this).closest('.deck'), {(scow %ud a)})"
          =hx-post  post-url
          =hx-swap  "none"
          =head  "set-current"
          =slide  (scow %ux s)
          =slide-index  (scow %ud a)
          ;span.loaded: {<a>}
          ;span.loading
            ;+  loading.feather-icons
          ==
        ==
        ;div
          =class  "actions fr jc ac g1 {hid}"
          =slide-actions  (scow %ud a)
          ;button.loader.bd1.br1.p1.b1.grow.hover.toggled
            =hx-post  post-url
            =hx-target  "find .loading"
            =hx-swap  "outerHTML"
            =head  "move-slide"
            =ux  (scow %ux s)
            =direction  "down"
            ;span.loaded.fr.jc.ac
              ; {(trip 0x93.86e2)}
            ==
            ;span.loading
              ;+  loading.feather-icons
            ==
          ==
          ;button.loader.bd1.br1.p1.b1.grow.hover.toggled
            =hx-post  post-url
            =hx-target  "find .loading"
            =hx-swap  "outerHTML"
            =head  "move-slide"
            =direction  "up"
            =ux  (scow %ux s)
            ;span.loaded.fr.jc.ac
              ; {(trip `@t`0x91.86e2)}
            ==
            ;span.loading
              ;+  loading.feather-icons
            ==
          ==
          ;button.loader.bd1.br1.p1.b1.grow.hover.toggled
            =hx-post  post-url
            =hx-target  "find .loading"
            =hx-swap  "outerHTML"
            =head  "delete-slide"
            =ux  (scow %ux s)
            ;span.loaded.fr.jc.ac
              ;+  close.feather-icons
            ==
            ;span.loading
              ;+  loading.feather-icons
            ==
          ==
        ==
      ==
    ==
  ==
++  new-slide
  ;div.sticky.z1
    =style  "top: 0; left: 0;"
    ;+
    =;  m
      ?~  c=(find ~[current.dek] slides.dek)  m
      m(a.g [[%current (scow %ud +(u.c))] a.g.m])
    ^-  manx
    ;button.new-slide.loader.hover.p3.br2.bd2.b2.bold
      =type  "button"
      =hx-post  post-url
      =hx-target  "find .loading"
      =hx-swap  "outerHTML"
      =head  "new-slide"
      ;span.loaded.fr.g2.ac.jc
        ;+  add.feather-icons
        ;span.s2: new slide
      ==
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
++  slides
  ;div.slides.fc.grow.hf
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
      =hx-select  "[stud='sail'] div"
      =hx-swap  "innerHTML"
      =hx-trigger  "load once"
      ;span.loaded(style "opacity: 0;");
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
++  script
  ;script
    ;+  ;/  %-  trip
    '''
    function deckHandleKey(event, deck) {
      let key = event.key;
      let current = document.activeElement?.nodeName?.toLowerCase();
      if (['input', 'textarea'].includes(current)) return;
      let handled = ['ArrowLeft', 'ArrowRight', ' ']
      if (handled.includes(key)) {
        event.preventDefault();
        event.stopPropagation();
        if (key == 'ArrowLeft') {
          deckPrevious(deck);
        } else if (key == 'ArrowRight' || key == ' ') {
          deckNext(deck);
        }
      }
    }
    function deckPrevious(deck) {
      let currentSlide = parseInt(deck.attr('current'));
      deckSetCurrent(deck, Math.max(1, currentSlide - 1));
    }
    function deckNext(deck) {
      let currentSlide = parseInt(deck.attr('current'));
      let lastSlide = parseInt(deck.attr('lastSlide'));
      deckSetCurrent(deck, Math.min(lastSlide, currentSlide + 1));
    }
    function deckPresent(el, ev) {
      $(el).siblings().removeClass('toggled');
      $(el).addClass('toggled');
      let top = $(el).closest('.deck');
      top.find('.index').addClass('hidden');
    }
    function deckEdit(el, ev) {
      $(el).siblings().removeClass('toggled');
      $(el).addClass('toggled');
      let top = $(el).closest('.deck');
      top.find('.index').removeClass('hidden');
    }
    function deckSetCurrent(deck, a) {
      deck.find('[slide-view]').addClass('hidden')
        .filter(`[slide-view='${a}']`).removeClass('hidden');
      deck.find('[slide-actions]').addClass('hidden')
        .filter(`[slide-actions='${a}']`).removeClass('hidden');
      deck.find('[slide-index]').removeClass('toggled')
        .filter(`[slide-index='${a}']`).addClass('toggled');
      deck.attr('current', a);
      deck.find('.new-slide').attr('current', a);
      deck.find('.control-count').text(a);
    }
    '''
  ==
++  style
  ;style
  ;+  ;/  %-  trip
  '''
  .slide {
    padding: 10%;
    font-size: 35px;
  }
  '''
  ==
--
