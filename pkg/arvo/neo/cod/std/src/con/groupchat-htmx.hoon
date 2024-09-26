/@  message
/@  groupchat
/-  feather-icons
/-  messages
:-  [%groupchat %$ %htmx]
|=  =groupchat
|=  =bowl:neo
^-  manx
;div.p2
  =label  "Chat"
    ;+  script:messages
    ;+  style:messages
    ;div.ma.fe.g2.wf
    =style  "max-width: 650px;"
      ;div.fc.g2.wf
        =id  "children"
        ;+  (render-messages:messages bowl here.bowl)
      ==
      ;+  (render-sender:messages [bowl /pub here.bowl])
  ==
==