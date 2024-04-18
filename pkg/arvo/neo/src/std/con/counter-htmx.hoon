/@  counter
/@  counter-diff
:-  [%counter %htmx]
|=  c=counter
|=  =bowl:neo
^-  manx
;div.fr.g2.ac.jc.counter-target
  ;button.p2.b1.br1.hover
    =hx-post  "/neo/hawk{(en-tape:pith:neo here.bowl)}?stud=counter-diff&counter"
    =hx-swap  "afterend"
    =hx-target  "this"
    =action  "dec"
    ; -
  ==
  ::
  ;div: {(scow %ud c)}
  ::
  ;button.p2.b1.br1.hover
    =hx-post  "/neo/hawk{(en-tape:pith:neo here.bowl)}?stud=counter-diff&counter"
    =hx-swap  "afterend"
    =hx-target  "this"
    =action  "inc"
    ; +
  ==
==