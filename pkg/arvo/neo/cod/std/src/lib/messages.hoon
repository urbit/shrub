/@  message
/-  feather-icons
|%
::  This arm expects messages to be stored at
::  ~[%pub [%da ~2024.1.1]] or ~[%sub [%da ~2024.1.1]]
::  relative to here.bowl.
++  pith-tape
  |=  =pith 
  ^-  tape
  (en-tape:pith:neo pith)
::
++  style 
  ;style
  ;+  ;/  %-  trip
  '''
  .fe {
    height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    justify-content: flex-end
    }
  .msg{
    max-width: 70%;
    min-width: 40%;
  }
  '''
  ==
::
++  script 
  ;script
  ;+  ;/  %-  trip
  '''
    document.getElementById("render-sender").scrollIntoView({  
      block: "center",
      inline: "start",
      behavior: "instant"});
  '''
  ==
::
++  refresher
  |=  =bowl:neo
  ;div.absolute.hidden
    =style  "top: 1em; left: 1em;"
    ;div.loader.refresher
      =hx-get  "{(en-tape:pith:neo :(weld /neo/hawk here.bowl))}?no-save"
      =hx-trigger  "every 7s, refresh"
      =hx-target  "closest .top"
      =hx-select  ".top"
      =hx-swap  "outerHTML"
      ;span.loaded;
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
::
++  render-messages
  |=  =bowl:neo
  ^-  manx
  ;div.fc.g2.p1.top
    =label  "Messages"
    =id  "messages"
  ;+  (refresher bowl)
  ;*
    %+  turn
      %+  sort
        %+  murn
          ~(tap of:neo kids.bowl)
        |=  [=pith =idea:neo]
        ?~  pith  ~
        ?.  =(%message p.pail.idea)  ~
        `[pith idea]
      |=  [a=[=pith *] b=[=pith *]]
      =/  adate  +:(snag 1 pith.a)
      =/  bdate  +:(snag 1 pith.b)
      (lth adate bdate)
    |=  [pax=pith =idea:neo]
    (render-message pax idea bowl)
  ==
::
++  render-message
  |=  [pax=pith =idea:neo =bowl:neo]
  =/  msg  !<(message q.pail.idea)
  ~&  >  msg
  ^-  manx
  ?:  =(our.bowl from.msg)
    (render-our-message msg)
  ::;div.fc.g2.border.p3.br1.grow.msg
  ;div.fc.g2.grow.msg
    =style  "align-self: flex-start;"
    ;div.fr.ac.jb
      ;p.s-2.f3: {(scow %p from.msg)}
      ;p.s-2.f3: {(scow %da now.msg)}
    ==
    ;div.border.br1.p3
      ;p: {(trip contents.msg)}
    ==
  ==
::
++  render-our-message
|=  msg=message
;div.fc.g2.grow.msg
=style  "align-self: flex-end;"
  ;div.fr.ac.jb
    ;p.s-2.f3: {(scow %p from.msg)}
    ;p.s-2.f3: {(scow %da now.msg)}
  ==
  ;div.fr.je.border.br1.b1.p3
  ;p:  {(trip contents.msg)}
  ==
==
::
++  render-sender
  |=  [=bowl:neo location=pith]
  ^-  manx
  ;form.fc.g2.wf
    =hx-post  "/neo/hawk{(pith-tape (welp here.bowl location))}?stud=message"
    =hx-swap  "none"
    =hx-on-submit  "this.reset()"
    =head  "msg"
    =id  "render-sender"
    ;textarea.p2.border.br1
      =name  "text"
      =placeholder  ". . ."
      =oninput  "this.setAttribute('value', this.value)"
      =rows  "4"
      =required  ""
      =autocomplete  "off"
      =maxlength  "2048"
      ;
    ==
    ;input.hidden
      =name  "ship"
      =value  (scow %p our.bowl)
    ;
    ==
    ;input.hidden
      =name  "date"
      =value  (scow %da now.bowl)
    ;
    ==
    ;button.p2.b1.br1.bd1.wfc.hover.loader
      ;span.loaded.s2:  send
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
  ::
--