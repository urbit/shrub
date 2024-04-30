/@  dm
/@  message
/-  _/dmlib
:-  [%ship %htmx]
|=  shi=ship
|=  =bowl:neo
^-  manx
|^ 
;div.p2
  =label  "Chat"
  ;div.ma.fc.g2
    =style  "max-width: 650px;"
    ;div.fc.g2
      =id  "children"
      ;*
      %+  turn
        ^-  (list [pith pail:neo])
        %+  sort  ~(tap by kids.bowl)
        |=  [a=[=pith *] b=[=pith *]]
        (lth ->.pith.a ->.pith.b)
      render-message
    ==
    ;+  form-send-message
    ;+  refresher
  ==
==
::
++  refresher
  ;div
    =hx-get  "{(en-tape:pith:neo :(weld /neo/hawk here.bowl))}"
    =hx-trigger  "every 3s"
    =hx-target  "#children"
    =hx-select  "#children"
    =hx-swap  "outerHTML"
    ;
  ==
::
++  form-send-message
  ::
  ;form.fc.g2
    =hx-post  "{(en-tape:pith:neo :(weld /neo/hawk here.bowl))}?stud=dm-diff"
    =hx-on-submit  "this.reset()"
    =hx-target  "this"
    =hx-swap  "beforebegin"
    =head  "msg"
    ;date-now;
    ;span.hidden
      =value  "{(scow %p our.bowl)}"  ::XX this is broken for now and will bunt to ~zod
      ;
    ==
    ;textarea.p2.border.br1
      =placeholder  ". . ."
      =oninput  "this.setAttribute('value', this.value)"
      =rows  "4"
      =required  ""
      =autocomplete  "off"
      ;
    ==
    ;button.p2.b1.br1.wfc.hover
      ; send
    ==
  ==
  ::
++  render-message
  |=  [pax=pith =pail:neo]
  =/  msg  !<(message q.pail)
  (render-message:dmlib msg)
--
