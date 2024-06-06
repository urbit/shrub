/@  node
/@  slideshow
/-  _/manx-utils
/-  _/html-utils
:-  [%node %slideshow]
|=  nod=node
|^
  ^-  slideshow
  =/  mu  ~(. manx-utils nod)
  =/  code
    =/  raw=tape  (need (val:mu "code"))
    ?:  =((lent raw) 0)  (crip raw)
    ?:  =((rear raw) '\0a')  (crip (snip raw))
    (crip raw)
  =/  class  (vol:mu "classes")
  [code class `(render-udon code) %both 0]
++  render-udon
  |=  code=@t
  ^-  (each (list manx) tang)
  =/  newline  (trip 10)
  =/  udon
    :: format as udon document
    %-  crip
    ;:  welp
      ";>"  newline  newline
      (trip code)  newline
    ==
  =/  mul
    %-  mule
    |.
    !<  manx
    %+  slap
      ;:  slop
        !>(..zuse)
        !>(manx-utils=manx-utils)
      ==
    (ream udon)
  ?-  -.mul
    %.y  [%.y (split-slides (manx p.mul))]
    %.n  [%.n (tang p.mul)]
  ==
++  split-slides
  |=  doc=manx
  ^-  (list manx)
  =/  seps
    %-  ~(wic mx:html-utils doc)
    |=  [=path =manx]
    =(n.g.manx %hr)
  =/  inds
    %+  murn  seps
    |=  [=path =manx]
    `(slav %ud (head path))
  =<  p
  %^    spin
      (snoc inds (lent c.doc))
    0
  |=  [n=@ud a=@ud]
  :_  +(a)
  =/  prev  ?~(a 0 (snag (dec a) inds))
  ;div
    ;*
    ?:  =(prev 0)
      (swag [prev (sub n prev)] c.doc)
    (swag [+(prev) (sub n +(prev))] c.doc)
  ==
--
