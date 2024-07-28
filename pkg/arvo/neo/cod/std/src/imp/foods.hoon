/@  food
/@  foods-diff
::
^-  kook:neo
|%
  ++  state  pro/%sig
  ++  poke  (sy %foods-diff %food ~)
  ++  kids
    :+  ~  %y
    %-  ~(gas by *lads:neo)
    :~  :-  [|/%ux |]  [pro/%food ~]
    ==
  ++  deps  *deps:neo
  ++  form
    ^-  form:neo
    |_  [=bowl:neo =aeon:neo state=pail:neo]
      ++  init
        |=  old=(unit pail:neo)
        ^-  (quip card:neo pail:neo)
        :-  ~  sig/!>(~)
      ++  poke
        |=  [=stud:neo vax=vase]
        ^-  (quip card:neo pail:neo)
        :_  sig/!>(~)  :: There is no state
        :~  ?+  stud  !!
              %food
                :-  (snoc here.bowl [%ux (mod eny.bowl (pow 16 16))])
                [%make %food `food/vax ~]
              %foods-diff
                =/  poke  !<(foods-diff vax)
                ?>  =(our.bowl ship.src.bowl)
                ?-  -.poke
                  %new-food
                    :-  (snoc here.bowl [%ux (mod eny.bowl (pow 16 16))])
                    [%make %food `food/!>(food.poke) ~]
                  %put-food
                    :-  (snoc here.bowl [%ux id.poke])
                    [%make %food `food/!>(food.poke) ~]
                  %del-food  !!
                  ::  :-  (snoc here.bowl [%ux id.poke])
                  ::  [%tomb %food ~]
                ==
            ==
        ==
    --
--
