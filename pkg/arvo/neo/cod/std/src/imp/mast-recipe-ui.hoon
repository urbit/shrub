/@  ui-event
/@  food
::/@  txt
/@  foods-diff
::
^-  kook:neo
=<
|%
  ++  state  pro/%manx
  ++  poke   (sy %ui-event %rely %gift ~)
  ++  kids  *kids:neo
  ++  deps
    ^-  deps:neo
    %-  my
    :~  :^  %src  &  [pro/%sig (sy %foods-diff %food ~)]
        :+  ~  %y
        %-  ~(gas by *lads:neo)
        :~  :-  [|/%ux |]  [pro/%food ~]
        ==
    ==
  ++  form
    ^-  form:neo
    |_  [=bowl:neo =aeon:neo =pail:neo]
      ::
      ++  init
        |=  pal=(unit pail:neo)
        ^-  (quip card:neo pail:neo)
        =/  the-foods  (food-map bowl)
        :-  ~
        manx/!>((render the-foods))
      ::
      ++  poke
        |=  [std=stud:neo vaz=vase]
        ^-  (quip card:neo pail:neo)
        ?+  std  ~|(bad-stud/std !!)
          ::
          %ui-event
            =/  eve  !<(ui-event vaz)
            ?+  path.eve  !!
              [%click %submit ~]
                =/  name  (~(got by data.eve) '/name-input/value')
                =/  calories  (slav %rs (~(got by data.eve) '/calories-input/value'))
                =/  carbs  (slav %rs (~(got by data.eve) '/carbs-input/value'))
                =/  protein  (slav %rs (~(got by data.eve) '/protein-input/value'))
                =/  the-diff=foods-diff
                  [%new-food %*(. *food name name, calories calories, carbs carbs, protein protein)]
                =/  dst=pith:neo  p:(~(got by deps.bowl) %src)
                :_  pail
                :~  [dst %poke foods-diff/!>(the-diff)]
                ==
            ==
          ::
          %rely
            =/  the-foods  (food-map bowl)
            :-  ~
            manx/!>((render the-foods))
            ::
            ::  ::?+  path.eve  ~|(missing-event-handler-for/path.eve !!)
            ::  ::  ::
            ::  ::    [%click %submit ~]
            ::  ::  =/  dat=(unit @t)
            ::  ::    (~(get by data.eve) '/diary-input/value')
            ::  ::  ?~  dat
            ::  ::    ~|(%diary-input-fail !!)
            ::  ::  =/  dif=diary-diff
            ::  ::    [%put-entry now.bowl u.dat]
            ::  ::  =/  dst=pith:neo
            ::  ::    p:(~(got by deps.bowl) %diary)
            ::  ::  :_  pail
            ::  ::  :~  [dst %poke diary-diff/!>(dif)]
            ::  ::  ==
            ::  ::  ::
            ::  ::    [%click %delete @ta ~]
            ::  ::  =/  key=@da
            ::  ::    (slav %da i.t.t.path.eve)
            ::  ::  =/  dif=diary-diff
            ::  ::    [%del-entry key]
            ::  ::  =/  dst=pith:neo
            ::  ::    p:(~(got by deps.bowl) %diary)
            ::  ::  :_  pail
            ::  ::  :~  [dst %poke diary-diff/!>(dif)]
            ::  ::  ==
            ::  ::  ::
            ::  ::==
            ::  ::
        ==
      ::
    --
--
::
|%
  ::
  ++  render
    |=  [the-foods=(map pith food)]
    |^  ^-  manx
        ;html
          ;head
            ;meta(charset "utf-8");
          ==
          ;body
            =style  "margin: 0; width: 100%; display: grid; place-items: center;"
            ;main
              ;h1: Foods database
              ;+  food-form
              ;+  food-items
            ==
          ==
        ==
      ::
      ++  food-items
        ^-  manx
        ;div
          ;*  %+  turn  ~(val by the-foods)
              |=  [=food]
              ;div: {(trip name.food)}
        ==
      ::
      ++  food-form
        ^-  manx
        ;div
          ;div
            ;label: Name:
            ;input(id "name-input", name "name", type "text");
          ==
          ;div
            ;label: Calories:
            ;input(id "calories-input", name "calories", type "text");
          ==
          ;div
            ;label: Carbs:
            ;input(id "carbs-input", name "carbs", type "text");
          ==
          ;div
            ;label: Protein:
            ;input(id "protein-input", name "protein", type "text");
          ==
          ;button
            =event  "/click/submit"
            =return
              """
              /name-input/value
              /calories-input/value
              /carbs-input/value
              /protein-input/value
              """
            ; Enter
          ==
        ==
    --
  ::  ::  ::  ::  ::  ::  ::  ::  ::  ::
  ++  food-map
    |=  =bowl:neo
    ^-  (map pith food)
    %-  malt
    %+  turn
      %~  tap
        of:neo
      %-  %~  del  of:neo
          q:(~(got by deps.bowl) %src)
        /
    |=  [=pith =idea:neo]
    :-  pith
    !<(food q.pail.idea)
--
