/@  component
=>
|%
++  calc-dep
  |=  [=bowl:neo =logic:component]
  ^-  ?
  =/  a=(unit (pair pith cane:neo))
    (~(get by deps.bowl) %a)
  =/  b=(unit (pair pith cane:neo))
    (~(get by deps.bowl) %b)
  ::
  ?-     -.logic
      %none
    %.n 
  ::
      %one
    =/  new
      ?~  a  
        ?~  b
          !!  :: mismatch between logic and deps
        status:!<(component q.pail.q.u.b)
      status:!<(component q.pail.q.u.a)
    ?-  uno.logic
      %mirror   new
      %inverse  !new
    ==
  ::
      %both
    ?~  a  !!  :: mismatch between logic and deps
    ?~  b  !!
    =/  aval  status:!<(component q.pail.q.u.a)
    =/  bval  status:!<(component q.pail.q.u.b)
    ?-  dos.logic
      %and   ?&(aval bval)
      %nand  ?!(?&(aval bval))
      %or    ?|(aval bval)
      %xor   ?&(?|(aval bval) ?!(?&(aval bval)))
    ==
  ==
--
|%
++  state  %component
++  poke   (sy %poke ~)
++  kids   *kids:neo
++  deps
  %-  ~(gas by *deps:neo)
  :~  [%a | [%component %sig] ~]
      [%b | [%component %sig] ~]
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo sta=vase *]
  ++  init
    |=  vas=(unit vase)
    ^-  (quip card:neo vase)
    [~ (need vas)]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    =/  state  !<(component sta)
    =/  behavior  behavior.state
    =;  new
      =.  status.state  new
      [~ !>(state)]
    ?+    stud  !!
        %rely
      ?:  (~(has in behavior) %auto)
        (calc-dep bowl logic.state)
      status.state
    ::
        %poke
      ?.  ?|  !(~(has in behavior) %if-dep)
              (calc-dep bowl logic.state)
          ==
        status.state
      ?:  (~(has in behavior) %once)
        %.y
      ?:  (~(has in behavior) %flip)
        !status.state
      status.state
    ==    
  --
--
