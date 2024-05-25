/@  accel
/@  accel-diff
/@  accel-cell
::
=<
::
^-  firm:neo
|%
++  state  %accel
++  poke  (sy %accel-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%ud |/%ud |]
      [%accel-cell %sig]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo sta=vase *]
  ++  init
    |=  old=(unit vase)
    =/  width  2
    =/  height  2
    :_  !>([width height])
    (make-cells bowl 1 width 1 height)
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%accel-diff stud)
    =/  state  !<(accel sta)
    =/  poke  !<(accel-diff vax)
    ?>  =(our ship.src):bowl
    ?-    -.poke
        %inc-width
      =/  new  (add 1 width.state)
      :_  !>([new height.state])
      (make-cells bowl new new 1 height.state)
    ::
        %inc-height
      =/  new  (add 1 height.state)
      :_  !>([width.state new])
      (make-cells bowl 1 width.state new new)
    ::
        %new
      :_  sta
      =;  conf
        :~  :-  (welp here.bowl ~[[ud/row.poke] [ud/column.poke]])
            :*  %make 
                %accel-cell 
                `!>([text.poke ~ refa.poke refb.poke target.poke]) 
                conf
            ==
        ==
      :: there has to be a more elegant way to do this
      ?~  refa.poke
        ?~  refb.poke
          ~
        (malt ~[[%b u.refb.poke]])
      ?~  refb.poke
        (malt ~[[%a u.refa.poke]])
      (malt `(list [term pith])`~[[%a u.refa.poke] [%b u.refb.poke]])
    ==
  --
--
::
|%
++  make-cells
  |=  [=bowl:neo colstart=@ud colend=@ud rowstart=@ud rowend=@ud]
  ^-  (list card:neo)
  %-  zing
  %+  turn  (gulf colstart colend)
  |=  col=@ud
  %+  turn  (gulf rowstart rowend)
  |=  row=@ud
  [#/[p/our.bowl]/home/accel/[ud/col]/[ud/row] %make %accel-cell `!>(['~' ~ ~ ~ ~]) ~]
::
++  codegen
  |=  refs=(list pith)
  ^-  firm:neo
  =>
  |%
  ++  render-hoon
    |=  [code=@t vases=(map @tas vase)]
    ^-  (unit (each vase tang))
    =/  code
      %-  crip
      :: (trip 10) = tape of newline
      :: to ensure that lack of newline at end
      :: of file doesn't break evaluation
      (welp (trip code) (trip 10))
    =;  mul
      ?-  -.mul
        %.y  (some [%.y p.mul])
        %.n  (some [%.n (tang p.mul)])
      ==
    %-  mule
    |.
    %-  slap
    :_  (ream code)
    %+  slop
      !>(..zuse)
    ^-  vase
    %+  roll 
      ~(turn by vases) 
    |=  [faceone=@tas vaseone=vase facetwo=@tas vasetwo=vase]
    ^-  vase
    %+  slop
      vaseone(p [%face faceone p.vaseone])
    vasetwo(p [%face facetwo p.vasetwo])
  ::
  ++  maybe-promote-vase
    ::  if the stud of the pail is %accel-cell,
    ::  'promote' the vase in its 'result'.
    ::  this avoids putting vases inside of vases
    ::  AND provides a better experience for the user
    ::  by no longer requiring them to unvase accel-cell
    ::  references themselves.
    |=  =pail:neo
    ^-  vase
    ?.  =(%accel-cell p.pail)
      q.pail
    =/  v  !<(accel-cell q.pail)
    ?~  result.v  !>(~)
    ?-  -.u.result.v
      %.n  !>(~)
      %.y  +.u.result.v
    ==
  ::
  ++  get-deps-vases
    |=  =bowl:neo
    ^-  (map @tas vase)
    %+  ~(run by deps.bowl)
    |=  x=(pair pith cane:neo)
    (maybe-promote-vase pail.q.u.x)
  ::
  ++  update
    |=  [cell=accel-cell =bowl:neo]
    ^-  (quip card:neo vase)
    =/  vases=(map @tas vase)  (get-deps-vases bowl)
    =.  result.cell
      (render-hoon code.cell vases)
    :_  !>(cell)
    ?~  target.cell  ~
    ?~  result.cell  ~
    ?-  -.u.result.cell  
      %.n  ~
      %.y  [pith.u.target.cell %poke [stud.u.target.cell p.u.result.cell]]~
    ==
  ::
  ++  pith-to-name
    |=  ref=pith
    ^-  %tas
    !!
  --
  |%
  ++  state  %accel-cell
  ++  poke  (sy %rely ~)
  ++  kids  *kids:neo
  ++  deps
    %-  ~(gas by *deps:neo)
    %+  turn
      refs
    |=  ref=pith
    :*  (pith-to-name ref) 
        |
        [%pail %sig]
        ~
    ==
  ::
  ++  form
    ^-  form:neo
    |_  [=bowl:neo =ever:neo state-vase=vase *]
    ++  poke
      |=  [=stud:neo vax=vase]
      ^-  (quip card:neo vase)
      ?.  =(stud %rely)  
        [~ state-vase]
      =+  !<([=term =stem:neo] vax)
      ?>  ?=(%x -.q.stem)
      =/  cell  !<(accel-cell state-vase)
      (update cell bowl)
    ::
    ++  init
      |=  old=(unit vase)
      ^-  (quip card:neo vase)
      =/  cell  !<(accel-cell (need old))
      (update cell bowl) 
    --
  --
--