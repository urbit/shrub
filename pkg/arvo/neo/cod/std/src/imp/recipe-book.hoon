/@  recipe
/@  recipes-diff
::
^-  kook:neo
|%
  ++  state  pro/%pith  :: absolute path to the food database
  ++  poke  (sy %recipes-diff ~)
  ++  kids
    :+  ~  %y
    %-  ~(gas by *lads:neo)
    :~  :-  [|/%ux |]  [pro/%recipe ~]
    ==
  ++  deps  *deps:neo
  ++  form
    ^-  form:neo
    |_  [=bowl:neo =aeon:neo state-pail=pail:neo]
      ++  init
        |=  old=(unit pail:neo)
        ^-  (quip card:neo pail:neo)
        ?~  old  !!
        =/  the-pail  (need old)
        ?>  =(%pith p.the-pail)
        :-  ~  the-pail
      ++  poke
        |=  [=stud:neo vax=vase]
        ^-  (quip card:neo pail:neo)
        :::_  sig/!>(~)  :: There is no state
        :_  state-pail
        :~  ?+  stud  !!
              %recipes-diff
                =/  poke  !<(recipes-diff vax)
                ?>  =(our.bowl ship.src.bowl)
                ?+  -.poke  !!
                  %new-recipe
                    =/  the-recipe  %*(. *recipe name name.poke)
                    :-  (snoc here.bowl [%ux (mod eny.bowl (pow 16 16))])
                    :*  %make  %recipe  `recipe/!>(the-recipe)
                        %-  molt  ~[[%src !<(pith q.state-pail)]]
                    ==
                  ::%put-food
                  ::  :-  (snoc here.bowl [%ux id.poke])
                  ::  [%make %food `food/!>(food.poke) ~]
                  ::%del-food  !!
                  ::  :-  (snoc here.bowl [%ux id.poke])
                  ::  [%tomb %food ~]
                ==
            ==
        ==
    --
--
