/@  oxal
::
::
::  this is a very rough sketch and the
::  code needs to be cleaned up a lot!!
::
::  DO NOT LET ME MERGE THIS CODE!!!!!!
::
::
:-  [%oxal %htmx]
|=  ox=oxal
|=  =bowl:neo
^-  manx
|^
  ;div.relative.top
    =here  (en-tape:pith:neo here.bowl)
    =style  "margin: 200px 0 450px 0;"
    ;+  (ox-al / ox)
    ;+  style
    ;+  script
  ==
::
++  id  (make-id here.bowl)
++  make-id
  |=  =pith
  ^-  tape
  %-  zing
  %+  turn  (pout pith)
  |=  smeg=@ta
  %+  weld  "--"
  (trip smeg)
  ::(scow %ux smeg)
::
++  en-tags
  |=  tags=(list [term ?])
  %-  zing
  (join " " (turn tags |=([=term ?] (trip term))))
::
++  children-tags
  |=  kids=(list pith)
  ^-  (list term)
  %~  tap  in
  %-  silt
  ^-  (list term)
  %-  zing
  %+  turn  kids
  |=  =pith
  =/  upail  (~(get by kids.bowl) pith)
  ?~  upail  ~
  =/  fot  !<(oxal q.u.upail)
  (turn tags.fot |=([=term ?] term))
::
::
++  ox-al
  |=  [relative=pith ox=oxal]
  ^-  manx
  =/  here  (welp here.bowl relative)
  =/  tag-class
    ^-  tape
    %-  zing
    %+  join  " "
    %+  turn  tags.ox
    |=  [t=term filtered=?]
    "tag-{(trip t)}"
  =/  name-text  (trip name.ox)
  =/  is-top  =(0 (lent relative))
  =/  is-populated-top  &(is-top !=(~ what.ox))
  ;section
    =id  "oxal-top-{(make-id here)}"
    =class  "ox-al ma mw-page wf fc {tag-class}"
    ;header.fr.af
      =id  "header-{(make-id here)}"
      =style  "box-sizing: border-box;"
      ;button
        =class  "action p1 fr ac jc hover b0 mono tc {(trip ?:(is-top 'toggled' ''))}"
        =onclick
          """
          $(this).parent().siblings('.kods').toggleClass('hidden');
          $(this).toggleClass('toggled');
          let el = document.getElementById('lazy-{(make-id here)}');
          if (el) \{ emit(el, 'unlazify')}
          """
        =style  "width: 30px;"
        ; =
      ==
      ;button
        =class  "action p1 fr g1 ac jb grow hover b0 ox-title {(trip ?:(is-populated-top 'toggled' ''))}"
        =onclick
          """
          $(this).parent().siblings('.file').toggleClass('hidden');
          $(this).toggleClass('toggled');
          """
        ;span.name-out.tl.grow.mono.s-1(style "padding-left:4px; line-height: 1.3;"): {name-text}
        ;*
        %+  turn  tags.ox
        |=  [t=term filtered=?]
        ;span.s-1.f3.br1.mono: {(trip t)}
      ==
      ;div.fr.af.form-rename.hidden.grow
        ;+  (name here name-text)
        ;+  (tags here (en-tags tags.ox))
      ==
      ;button.action.p1.fr.ac.jc.hover.b0.mono.tc
        =style  "width: 30px;"
        =onclick
          """
          $(this).parent().siblings('.actions').toggleClass('hidden');
          $(this).toggleClass('toggled');
          """
        ; #
      ==
      ;div.p1;
    ==
    ;+  (actions here)
    ;+  (node-viewer here ox is-populated-top)
    ;div
      =class  "fc kods {(trip ?:(is-top '' 'hidden'))}"
      =style  "padding-left: 20px; padding-bottom: 15px;"
      ;div.fr.ac
        ;+  (form-create here)
        ;div.grow;
        ;+  (filter (children-tags kods.ox))
      ==
      ;div.kids.fc
        ;*
        ?.  =((lent relative) 0)
          ;=
            ;+  (lazy-fetcher here)
          ==
        %+  turn  kods.ox
        |=  =pith
        =/  pail  (~(got by kids.bowl) pith)
        =/  fot  !<(oxal q.pail)
        ^$(ox fot, relative (welp relative pith))
      ==
    ==
  ==
::
::
++  lazy-fetcher
  |=  here=pith
  ;div
    =id  "lazy-{(make-id here)}"
    =hx-get  "/neo/hawk{(en-tape:pith:neo here)}"
    =hx-trigger  "unlazify"
    =hx-swap  "morph:outerHTML"
    =hx-target  "#oxal-top-{(make-id here)}"
    =hx-select  "#oxal-top-{(make-id here)}"
    ;
  ==
++  form-create
  |=  here=pith
  ;div.p2
    ;button.action.p1.br1.b1.hover.wfc.mono.s-2.f2.loader
      =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
      =hx-target  "find .loading"
      =hx-swap  "outerHTML"
      =head  "prepend"
      ;span.loaded: +
      ;span.loading: -
    ==
  ==
::
++  actions
  |=  here=pith
  ;div.frw.g2.p2.actions.hidden.border
    =id  "axns-{(make-id here)}"
    =style  "flex-direction: row-reverse;"
    ;button.p1.s-1.b1.br1.hover.action.loader
      =id  "rename-btn-{(make-id here)}"
      =onclick
        """
        $(this).toggleClass('toggled');
        $(this).parent().parent().children('header').find('.ox-title').toggleClass('hidden');
        $(this).parent().parent().children('header').find('.form-rename').toggleClass('hidden');
        """
      ;span.loaded: rename
      ;span.loading: ---
    ==
    ;button.p1.s-1.b1.br1.hover: become
    ;a.p1.s-1.b1.br1.hover.loader
      =href  "/neo/hawk{(en-tape:pith:neo here)}"
      ;span.loaded: zoom
      ;span.loading: -
    ==
    ;button.p1.s-1.b1.br1.hover: copy FQSP
    ;button.p1.s-1.b1.br1.hover: copy URL
    ;div.basis-full.fc.g1
      ;div: {(en-tape:pith:neo here)}
      ;+  pub-read-toggle
      ;+  pub-poke-toggle
    ==
  ==
::
++  pub-read-toggle
  ;label.fr.ac.js.g2
    ;input
      =type  "checkbox"
      ;
    ==
    ;span: publicly read-able?
  ==
++  pub-poke-toggle
  ;label.fr.ac.js.g2
    ;input
      =type  "checkbox"
      ;
    ==
    ;span: publicly poke-able?
  ==
++  stud-changer
  |=  [here=pith ox=oxal]
  =/  stud
    ?~  what.ox  %none
    ?>  =(%document -.u.what.ox)
    +<.u.what.ox
  ;form.fr.af
    =head  "restud"
    =hx-post   "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input from:find select"
    =hx-swap  "outerHTML"
    =hx-target  "find .loading"
    ;select.border.p1.grow
      =type  "text"
      =name  "stud"
      =autocomplete  "off"
      =oninput  "this.setAttribute('value', this.value);"
      ;*
      %+  turn
        :~
          "none"
          "txt"
          "img-url"
          "iframe-url"
          "audio-url"
          "video-url"
         ==
      |=  =tape
      =-
        ?.  =((crip tape) stud)  -
        %=  -
          a.g  [[%selected ""] a.g.-]
        ==
      ^-  manx
      ;option
        =name  tape
        =value  tape
        ; {tape}
      ==
    ==
    ;div.loader.border.fr
      ;button.loaded.b1.hover.p1.block
        =type  "button"
        =style  "width: 33px;"
        =onclick  "$('#nv-{(make-id here)}').toggleClass('fullscreen'); $(this).toggleClass('toggled');"
        ; ⛶
      ==
      ;div.loading: ---
    ==
  ==
++  node-viewer
  |=  [here=pith ox=oxal open=?]
  =/  hidden  ?:(open "" "hidden")
  ;div
    =class  "fc file {hidden}"
    =style  "top: 0; left: 0;"
    =id  "nv-{(make-id here)}"
    ;+  (stud-changer here ox)
    ;+  (homointeractive-node here ox)
    ;
  ==
::
++  homointeractive-node
  |=  [here=pith ox=oxal]
  ?~  what.ox
    ;div;
  =/  doc  (need what.ox)
  ?-  -.doc
    %symlink  !!
    %formula  !!
      %document
    =/  pal  pail.doc
    ?+  p.pal
        ;div
          ; no renderer {<p.pal>}
        ==
      %txt  (form-txt here q.pal)
      %img-url  (form-img-url here q.pal)
      %iframe-url  (form-iframe-url here q.pal)
      %audio-url  (form-audio-url here q.pal)
      %video-url  (form-video-url here q.pal)
    ==
  ==
++  form-txt
  |=  [here=pith vax=vase]
  ^-  manx
  =/  val  !<(@t vax)
  ;form.fc.hf
    =id  "txt-form-{(make-id here)}"
    =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input changed delay:0.4s from:find textarea"
    =hx-target  "find .loading"
    =hx-swap  "outerHTML"
    =head  "edit"
    =stud  "txt"
    ;div.loader.border.s-2
      =id  "txt-area-loader-{(make-id here)}"
      ;div.loading: ---
      ;div.loaded(style "opacity: 0;"): ---
    ==
    ;textarea.border.p2.pre.grow
      =id  "txt-area-{(make-id here)}"
      =name  "text"
      =value  (trip val)
      =rows  (scow %ud (add 2 (lent (fand ~[`@t`10] (trip val)))))
      =style  "max-height: 450px;"
      =spellcheck  "false"
      =oninput  "this.setAttribute('value', this.value); this.setAttribute('rows', this.value.split('\\n').length+2);"
      ; {(trip val)}
    ==
  ==
++  form-img-url
  |=  [here=pith vax=vase]
  =/  val  !<(@t vax)
  ;form.fc.hf
    =id  "img-url-form-{(make-id here)}"
    =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input changed delay:0.4s from:find input"
    =hx-target  "find .loading"
    =hx-swap  "outerHTML"
    =head  "edit"
    =stud  "img-url"
    ;div.fr.wf
      =id  "img-par-area-{(make-id here)}"
      ;input.border.p1.grow
        =id  "img-area-{(make-id here)}"
        =name  "text"
        =value  (trip val)
        =autocomplete  "off"
        =placeholder  "https://url.."
        =oninput  "this.setAttribute('value', this.value);"
        ;
      ==
      ;div.loader.border.p1
        =id  "txt-loader-{(make-id here)}"
        ;div.loading: ---
        ;div.loaded(style "opacity: 0;"): ---
      ==
    ==
    ;div.border.grow
      ;img.block
        =src  (trip val)
        =style  "max-height: 350px; max-width: 100%;"
        ;
      ==
    ==
  ==
++  form-iframe-url
  |=  [here=pith vax=vase]
  =/  val  (@t !<(@t vax))
  ;form.fc.hf
    =id  "iframe-url-form-{(make-id here)}"
    =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input changed delay:0.4s from:find input"
    =hx-target  "find .loading"
    =hx-swap  "outerHTML"
    =head  "edit"
    =stud  "iframe-url"
    ;div.fr
      =id  "iframe-par-area-{(make-id here)}"
      ;input.border.p1.grow
        =id  "iframe-area-{(make-id here)}"
        =name  "text"
        =value  (trip val)
        =autocomplete  "off"
        =placeholder  "https://url.."
        =oninput  "this.setAttribute('value', this.value);"
        ;
      ==
      ;div.loader.border.p1
        ;div.loading: ---
        ;div.loaded(style "opacity: 0;"): ---
      ==
    ==
    ;iframe.border.wf.grow
      =src  (trip val)
      =style  "height: 350px;"
      =frameborder  "0"
      =sandbox  ""
      =allow
        """
        accelerometer;
        clipboard-write;
        encrypted-media;
        gyroscope;
        picture-in-picture
        """
      =allowfullscreen  ""
      ;
    ==
  ==
++  form-audio-url
  |=  [here=pith vax=vase]
  =/  val  (@t !<(@t vax))
  ;form.fc
    =id  "audio-url-form-{(make-id here)}"
    =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input changed delay:0.4s from:find input"
    =hx-target  "find .loading"
    =hx-swap  "outerHTML"
    =head  "edit"
    =stud  "audio-url"
    ;div.fr
      =id  "audio-par-area-{(make-id here)}"
      ;input.border.p1.grow
        =id  "audio-area-{(make-id here)}"
        =name  "text"
        =value  (trip val)
        =autocomplete  "off"
        =placeholder  "https://url.."
        =oninput  "this.setAttribute('value', this.value);"
        ;
      ==
      ;div.loader.border.p1
        ;div.loading: ---
        ;div.loaded(style "opacity: 0;"): ---
      ==
    ==
    ;audio.border
      =id  "aud-{(make-id here)}"
      =controls  ""
      ;+  ?:  =(0 (lent (trip val)))  ;/("")
      ;source
        =src  (trip val)
        ;
      ==
    ==
    ;script
      ;+  ;/
      """
      document.getElementById('aud-{(make-id here)}')?.load();
      """
    ==
  ==
++  form-video-url
  |=  [here=pith vax=vase]
  =/  val  (@t !<(@t vax))
  ;form.fc
    =id  "video-url-form-{(make-id here)}"
    =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input changed delay:0.4s from:find input"
    =hx-target  "find .loading"
    =hx-swap  "outerHTML"
    =head  "edit"
    =stud  "video-url"
    ;div.fr
      =id  "vid-par-area-{(make-id here)}"
      ;input.border.p1.grow
        =id  "vid-area-{(make-id here)}"
        =name  "text"
        =value  (trip val)
        =autocomplete  "off"
        =placeholder  "https://url.."
        =oninput  "this.setAttribute('value', this.value);"
        ;
      ==
      ;div.loader.border.p1
        ;div.loading: ---
        ;div.loaded(style "opacity: 0;"): ---
      ==
    ==
    ;video.border
      =id  "vid-{(make-id here)}"
      =controls  ""
      ;+  ?:  =(0 (lent (trip val)))  ;/("")
      ;source
        =src  (trip val)
        ;
      ==
    ==
    ;script
      ;+  ;/
      """
      document.getElementById('vid-{(make-id here)}')?.load();
      """
    ==
  ==
++  name
  |=  [here=pith =tape]
  ;input.name-in.p1.s-1.wf.mono.border
    =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input changed delay:0.4s"
    =hx-indicator  "#rename-btn-{(make-id here)}"
    =hx-target  "#rename-btn-{(make-id here)} .loading"
    =head  "rename"
    =style  "box-sizing: border-box; line-height: 1.3;"
    =type  "text"
    =placeholder  "name"
    =oninput  "$(this).attr('value', this.value);"
    =value  tape
    ;
  ==
::
++  tags
  |=  [here=pith =tape]
  ;input#tags-in.p1.s-1.wf.tr.mono.border
    =hx-post  "/neo/hawk{(en-tape:pith:neo here)}?stud=oxal-diff"
    =hx-trigger  "input changed delay:0.4s"
    =hx-indicator  "#rename-btn-{(make-id here)}"
    =hx-target  "#rename-btn-{(make-id here)} .loading"
    =head  "retag"
    =style  "box-sizing: border-box; line-height: 1.3;"
    =type  "text"
    =placeholder  "tags"
    =value  tape
    =oninput  "$(this).attr('value', this.value);"
    ;
  ==
::
++  filter
  |=  tags=(list term)
  ;div.fr.g2.je.p2
    ;*  ::  stubbed
    %+  turn  tags
    |=  =term
    ;button.s-2.f1.p1.br1.b1.hover.mono.action
      =onclick
        """
        $(this).toggleClass('dimmed');
        let tex = this.textContent.trim();
        let tag = '.tag-' + tex;
        if (this.classList.contains('dimmed')) \{
          $(this).parent().parent().parent().children('.kids')
            .children(tag).addClass('hidden');
        } else \{
          $(this).parent().parent().parent().children('.kids')
            .children(tag).removeClass('hidden');
        }
        """
      ; {(trip term)}
    ==
  ==
++  style
  ;style
  ;+  ;/  %-  trip
  '''
  .patched .border {
    border-color: #444444;
  }
  .dimmed {
    opacity: 0.3;
  }
  .border-3 {
    border: 1px solid var(--f3);
  }
  .top:has(.fullscreen) {
    margin: 0 !important;
    height: 100%;
  }
  .ox-al:has(.fullscreen) {
    height: 100%;
  }
  .fullscreen {
    position: absolute;
    z-index: 15;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background: var(--b0);
  }
  '''
  ==
++  script
  ;script
  ;+  ;/  %-  trip
  '''
  function emit(el, name, detail) {
    el.dispatchEvent(
      new Event(
        name,
        {
          bubbles: true,
          cancelable: false,
        }
      )
    )
  }
  '''
  ==
--
