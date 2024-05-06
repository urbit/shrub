/@  screen
/@  rectangle
:-  [%screen %htmx]
|=  =screen
|=  =bowl:neo
^-  manx
|^ 
;div.fc.wf.hf
  ;table
    =style  "border: none; border-collapse: collapse;"
    ;tbody
      ;*
      =;  pixels=(map [x=@ud y=@ud] pixel=@ux)
        %+  turn  (gulf 1 50)
        |=  x=@
        ;tr
          ;*
          %+  turn  (gulf 1 50)
          |=  y=@
          =;  color  
            ;td
              =style  "background-color: {color}; width: 5px; height: 5px; padding: 0; border: none;" 
              ; 
            ==
          %+  weld  
            "#" 
          %-  trip 
          %-  en:base16:mimes:html 
          :-  3
          (~(gut by pixels) [x y] 0xff.ffff)
        ==
      %-  malt
      %-  zing
      %+  turn
        ~(tap by kids.bowl)
      |=  [pax=pith =pail:neo]
      ^-  (list [[x=@ud y=@ud] pixel=@ux])
      =/  y  +:-:(flop pax)
      =/  x  +:+<:(flop pax)
      =/  rect  !<(rectangle q.pail)
      =/  w  width.rect
      =/  h  height.rect
      =/  pixels  pixels.rect
      ::  assume that =((lent pix) (mul w h))
      =/  new=(list [[x=@ud y=@ud] pixel=@ux])  ~
      =/  i  0
      =/  j  0
      |-  
      ?~  pixels  new
      %=  $
        new  [[[(add x i) (add y j)] -.pixels] new]
        pixels  +.pixels
        ::
        i    ?:  (gte (add i 1) w)
              0
            (add i 1)
        ::
        j    ?:  (gte (add i 1) w)
              (add j 1)
            j
      ==
    ==
  ==
==
::++  render-rectangle
::  |=  [pax=pith =pail:neo]

::  
::  ::  XX  render the rectangle at [x, y] within some larger space
--