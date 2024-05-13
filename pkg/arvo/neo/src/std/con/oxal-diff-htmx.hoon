/@  oxal-diff
:-  [%oxal-diff %htmx]
|=  o=oxal-diff
|=  =bowl:neo
|^
;div.loading
  =hx-get  "/neo/hawk{(en-tape:pith:neo here.bowl)}"
  =hx-target  "#oxal-top-{(make-id here.bowl)}"
  =hx-select  "#oxal-top-{(make-id here.bowl)}"
  =hx-indicator  "closest .loader"
  =hx-swap  "morph:outerHTML"
  =hx-trigger  "load"
  ; +
==
++  make-id
  |=  =pith
  ^-  tape
  %-  zing
  %+  turn  (pout pith)
  |=  smeg=@ta
  %+  weld  "--"
  (trip smeg)
--
