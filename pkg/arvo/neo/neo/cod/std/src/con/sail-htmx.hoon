/@  sail
/-  feather-icons
:-  [%sail %$ %htmx]
|=  =sail
|=  =bowl:neo
|^
  ;div.fc.relative.hf.scroll-hidden
    ;+  controls
    ;div.frw.js.as.scroll-y.hf
      =id  "tabs-{id}"
      ;+  editor
      ;+  viewer
      ;+  docs
    ==
  ==
++  id
  ^-  tape
  %-  zing
  %+  turn  (pout (slag 1 here.bowl))
  |=  smeg=@ta
  %+  weld  "--"
  (trip smeg)
++  controls
  ;div.p2.frw.jc.ac.g3.sticky.wf
    =style  "top:0; left: 0;"
    ;button.p-1.br1.b1.hover
      =type  "button"
      =onclick
        """
        $('#tabs-{id}').children().addClass('hidden');
        $('#editor-{id}').removeClass('hidden');
        $(this).siblings().removeClass('toggled');
        $(this).addClass('toggled');
        """
      ; edit
    ==
    ;button.p-1.br1.b1.hover
      =type  "button"
      =onclick
        """
        $('#tabs-{id}').children().addClass('hidden');
        $('#viewer-{id}').removeClass('hidden');
        $('#editor-{id}').removeClass('hidden');
        $(this).siblings().removeClass('toggled');
        $(this).addClass('toggled');
        """
      ; both
    ==
    ;button.p-1.br1.b1.hover.toggled
      =type  "button"
      =onclick
        """
        $('#tabs-{id}').children().addClass('hidden');
        $('#viewer-{id}').removeClass('hidden');
        $(this).siblings().removeClass('toggled');
        $(this).addClass('toggled');
        """
        ;
      ; view
    ==
    ;label.fr.je.g1.grow.hidden
      ;input
        =name  "view"
        =type  "radio"
        =oninput  "$('#tabs-{id}').children().addClass('hidden');$('#docs-{id}').removeClass('hidden');"
        ;
      ==
      ;span: docs
    ==
  ==
++  editor
  ;form.fc.p1.g1.hidden.grow.basis-half.scroll-y.relative
    =id  "editor-{id}"
    =style  "min-width: 300px; height: 100%;"
    =hx-post  "/neo/hawk{(en-tape:pith:neo here.bowl)}?stud=sail"
    =hx-swap  "innerHTML"
    =hx-select  "main > div"
    =hx-target  "#viewer-{id}"
    =hx-trigger  "input changed delay:0.4s from:find textarea, input changed delay:0.4s from:find input"
    ;input.p2.mono.bd1.br1
      =name  "classes"
      =placeholder  "prose p3"
      =type  "text"
      =autocomplete  "off"
      =value  (trip class.sail)
      =oninput  "$(this).attr('value', this.value);"
      ;
    ==
    ;textarea.p2.pre.mono.scroll-x.grow.bd1.m0.br1
      =name  "code"
      =oninput  "this.setAttribute('value', this.value);"
      =spellcheck  "false"
      =value  ""
      =placeholder  "# new document"
      ; {(trip code.sail)}
    ==
    ;div.absolute
      =style  "top: 14px; right: 14px;"
      ;div.loader
        ;span.loaded(style "opacity: 0;"): ---
        ;span.loading
          ;+  loading.feather-icons
        ==
      ==
    ==
  ==
++  error
  |=  =tang
  ;div.fc.g3.p3.s0
    ;div.pre.mono
      ;*
      %+  turn  (scag 25 tang)
      |=  =tank
      ;span: {(of-wall:format (~(win re tank) 0 80))}
    ==
    ;div.pre.numbered.mono
      ;span: ;>
      ;span;
      ;*
      %+  turn  (to-wain:format code.sail)
      |=  t=@t
      ;span: {(trip t)}
    ==
  ==
++  viewer
  ;main.grow.basis-half.scroll-x.scroll-y.br1
    =id  "viewer-{id}"
    =style  "min-width: 300px; height: 100%;"
    ;+
    ?~  result.sail
      ;div.prose.p3
        ;h1: nothing rendered
        ;p: edit the sail to begin rendering
      ==
    =/  res  (need result.sail)
    ?-  -.res
      %.n  (error +.res)
        %.y
      =-  -(a.g [[%class (trip class.sail)] a.g.-])
      ^-  manx
      +.res
    ==
  ==
::  XX import from source file instead of copying
++  docs
;div.grow.border.basis-half.scroll-x.scroll-y.hidden
=id  "docs-{id}"
=style  "min-width: 300px; height: 100%;"
;div.prose.p3

# Intro to Feather

Feather is a _Design System_ which gives
Sail developers easy access to a small set of
predefined styles.

Feather is implemented as a library of CSS classes,
and is bundled with Sky and Hawk.


Benefits of opting into
Feather's constraints:

- Feather uses CSS variables that...
  - the user can override
  - respect OS light/dark theme
- UIs styled with Feather fit in
  with the style of Sky and Hawk
  - "birds of a feather flock together"














-----------------------------------------------
## The `prose` Class

the `.prose` class adds blog-like spacing,
sizing, and readability styling to semantic
children such as `p`
`li` `h1` `h2` `a` etc.

This document uses it.

```
;article.prose

  # cool

  - neat
  - fine

==
```



-----------------------------------------------
## Flexbox

;*
%+  turn
:~
  "fr jb"
  "fr ja"
  "fr jc"
  "fr js"
  "fr je"
  "fc ac"
  "fc as"
  "fc ae"
  "fc af"
==
|=  =tape
;div.fc.g1.br1(style "margin-top: 20px;")
;code: {tape}
;div
  =class  "bd1 br1 p3 g1 {tape}"
  ;*  %+  turn  (gulf 1 3)
  |=  n=@
  ;b.b1.f3.p1.br1: X
==
==

;div.fc.g3(style "margin-top: 50px;")
;*
%+  turn
:~
  "fr g0"
  "fr g1"
  "fr g2"
  "fr g3"
  "fr g4"
  "fr g5"
  "fr g6"
  "fr g7"
  "fr g8"
==
|=  =tape
;div
  =class  "s-2 mono {tape}"
  ;div.bd1.p2: {tape}
  ;*  %+  turn  (gulf 1 3)
  |=  n=@
  ;div.bd1.p2;
==
==


;div.fr.g2(style "margin-top: 50px;")
;*
%+  turn
:~
  "fc g0"
  "fc g1"
  "fc g2"
  "fc g3"
  "fc g4"
  "fc g5"
  "fc g6"
  "fc g7"
  "fc g8"
==
|=  =tape
;div
  =class  "s-2 mono {tape}"
  ;div.bd1.p1(style "width: min-content;"): {tape}
  ;*  %+  turn  (gulf 1 3)
  |=  n=@
  ;div.bd1.p2;
==
==


;div.frw.g2(style "margin-top: 50px;")
;*
%+  turn  (gulf 1 10)
|=  n=@
;div.p2.bd1.mono: frw g2
==


;div.f2.mono
  ;div.fr.g4.p2.bd1.br1(style "margin-top: 50px;")
    ;div.p2.br1.b1;
    ;div.p2.br1.b1.tc.grow: grow
    ;div.p2.br1.b1;
  ==

  ;div.fr.g4.p2.bd1.br1(style "margin-top: 20px;")
    ;div.p2.br1.b1;
    ;div.p2.br1.b1;
    ;div.p2.br1.b1.tc.grow: grow
  ==

  ;div.fr.g4.p2.bd1.br1(style "margin-top: 20px;")
    ;div.p2.br1.b1.tc.grow: grow
    ;div.p2.br1.b1;
    ;div.p2.br1.b1.tc.grow: grow
  ==
==


-----------------------------------------------
## Typography

;div.frw.g1.br1.ac.jc
;*
%+  turn
:~
  "s-2"
  "s-1"
  "s0"
  "s2"
  "s3"
  "s4"
  "s5"
  "s6"
==
|=  =tape

;span
  =class  "p2 {tape}"
  ; {tape}
==
==
;div.frw.g1.br1.ac.jc
;*
%+  turn
:~
  "mono"
  "bold"
  "italic"
  "underline"
  "strike"
==
|=  =tape

;span
  =class  "p2 {tape}"
  ; {tape}
==
==




















-----------------------------------------------
## Text Alignment

;*
%+  turn
:~
  "tl"
  "tc"
  "tr"
==
|=  =tape

;div
  =class  "mono {tape}"
  ; {tape}
==



-----------------------------------------------
## Foreground & Background Colors

;div.frw.g1.br1.ac.jc.mono
;*
%+  turn
:~
  "f-3"
  "f-2"
  "f-1"
  "f0"
  "f1"
  "f2"
  "f3"
  "f4"
==
|=  =tape
;span
  =class  "p2 bold {tape}"
  ; {tape}
==
==




;div.frw.g1.br1.ac.jc.mono
;*
%+  turn
:~
  "b-3"
  "b-2"
  "b-1"
  "b0"
  "b1"
  "b2"
  "b3"
  "b4"
==
|=  =tape

;span
  =class  "p2 {tape}"
  ; {tape}
==
==











-----------------------------------------------
## Padding

;div.fc.ac.g2
;*
%+  turn
:~
  "p-8"
  "p-7"
  "p-6"
  "p-5"
  "p-4"
  "p-3"
  "p-2"
  "p-1"
  "p0"
  "p1"
  "p2"
  "p3"
  "p4"
  "p5"
  "p6"
  "p7"
  "p8"
  "p-page"
==
|=  =tape
;div
  =class  "wfc mono f2 b1 {tape}"
  ; {tape}
==
==











-----------------------------------------------
## Margin

;div
;*
%+  turn
:~
  "m0"
  "ma"
  "mt1"
  "mt2"
  "mt3"
==
|=  =tape
;div
  =class  "mono f2 b2 br1 wfc p2 {tape}"
  ; {tape}
==
==








-----------------------------------------------
## Opacity

;div.frw.g2.ac.jc

;*
%+  turn
:~
  "o0"
  "o1"
  "o2"
  "o3"
  "o4"
  "o5"
  "o6"
  "o7"
  "o8"
  "o9"
  "o10"
==
|=  =tape
;div.fc.g1.ac.jc
  ;span.mono.s-1.f2: {tape}
;div
  =class  "wfc mono f0 b1 p4 bd1 {tape}"
  ;
==
==
==












-----------------------------------------------
## Borders

;div.frw.ac.g2(style "margin-top: 20px;")
;*
%+  turn
:~
  "bd0"
  "bd1"
  "bd2"
  "bd3"
==
|=  =tape
;div
  =class  "wfc mono f2 p2 {tape}"
  ; {tape}
==
==

;div.frw.ac.g2(style "margin-top: 20px;")
;*
%+  turn
:~
  "br0"
  "br1"
  "br2"
  "br3"
==
|=  =tape
;div
  =class  "wfc mono f2 p2 bd1 {tape}"
  ; {tape}
==
==



-----------------------------------------------
## Dimensions

- `wf` width: full
- `wfc` width: fit-content
- `mw-page` max-width: page (650px)
- `hf` height: full
- `hfc` height: fit-content





-----------------------------------------------
## Special

;*
%+  turn
:~
  "toggled"
  "hover"
==
|=  =tape
;button(style "margin: 5px;")
  =class  "wfc mono f0 b0 p2 bd1 {tape}"
  ; {tape}
==

the `hidden` class hides the element.














-----------------------------------------------
## Request indicators


`loader`  indicator parent

`loading`  loading state

`loaded`  loaded state




;details.mt1
  ;summary: Example
;button.mt1.b1.p1.hover.br1.bd1.f1.loader
  =onclick  "$(this).toggleClass('htmx-request')"
  ;span.loaded: toggle load state
  ;span.loading.f1: ...loading
==

```
;button.loader
  =onclick  "$(this).toggleClass('htmx-request')"
  ;span.loaded:  toggle load state
  ;span.loading: ...loading
==
```

==
















-----------------------------------------------
## Misc


`scroll-y`\
scroll-y: auto

`scroll-x`\
scroll-x: auto

`relative`\
position: relative

`sticky`\
position: sticky

`absolute`\
position: absolute

`fixed`\
postion: fixed

`block`\
display: block

`inline`\
display: inline-block

`pre`\
white-space: pre

`pre-line`\
white-space: pre-line

`break`\
word-break: break-word

`action`\
touch-action: manipulation














-----------------------------------------------
## Feather Sutra

> Order requires constraints.


### Primary Constraint

Interfaces must work on a mobile web browser.


### Consequent Constraints

- no element should need to be wider than 350px
- avoid horizontal scrolling
- left-click is the only mouse event


### Locality of Behavior

- co-locate actionable elements with the elements on which they act
- put styling inline
- put javascript inline


### Mechanical Simplicity

- don't fight the browser
- avoid animations
- prefer [bubbling-event](https://htmx.org/attributes/hx-on/)
  architectures
- store state as text attributes in the DOM, not javascript state


### UX low-hanging fruit

- network requests should always have indicators
- prefer autosave to manually saving
- be semantic with your tags









-----------------------------------------------
## Feather Tantra

> Life evolves through a vital chaos.


```
;div.any.class(style "any: css;");

;div
  =class  "any class"
  =style
    """
    any: "css";
    that-you: "want;
    """
  ;
==

;style
  ;+  ;/  %-  trip
  '''
  .any-css {
    that-you: "want";
  }
  '''
==

;script
  ;+  ;/  %-  trip
  '''
  // any javascript you want
  '''
==


```






;div.end;

;style
;+  ;/  %-  trip
'''
details {
  display: flex !important;
  flex-direction: column;
  padding: 12px;
  background: var(--b1);
  box-sizing: border-box;
}
.end {
  margin-bottom: 450px;
}

hr {
  margin: 100px 0;
}
'''
==



==
==
--
