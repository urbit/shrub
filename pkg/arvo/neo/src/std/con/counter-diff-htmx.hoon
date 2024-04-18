/@  counter
/@  counter-diff
:-  [%counter-diff %htmx]
|=  cd=counter-diff
|=  =bowl:neo
^-  manx
;div.fr.g2.ac.jc.hidden
  =hx-get  "/neo/hawk{(en-tape:pith:neo here.bowl)}"
  =hx-trigger  "load"
  =hx-target  ".counter-target"
  =hx-swap  "outerHTML"
  ;
==