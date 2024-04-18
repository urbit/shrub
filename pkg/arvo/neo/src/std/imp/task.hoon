/@  task
/@  task-diff
|%
++  state  %task
++  poke   (sy %task-diff ~)
++  kids   
  ^-  kids:neo
  %-  ~(gas by *kids:neo)
  :~  :-  ~[|/%da]
    [%task %task-diff]
  ==
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    =/  diff  (task-diff !<(task-diff vax))
    ?-  -.diff
        %nest
      :_  state-vase  :_  ~
      :*  (snoc here.bowl [%da now.bowl])
          %make  %task  `!>(task.diff)  ~  
      ==
        %edit
      :-  ~
      !>  task.diff
    ==
  ++  init
    |=  vas=(unit vase)
    `(need vas)
  --
--
