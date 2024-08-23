/@  jpg
/@  png
/@  txt
/@  url
/@  ship
/@  email
/@  birthday
/@  hexadecimal
/@  phone-number
^-  kook:neo
|%
++  state
  [%pro %sig]
++  poke
  (sy %email %birthday %phone-number %url ~)
++  kids
  :+  ~
    %z
  %-  ~(gas by *lads:neo)
  :~  :-  [|/%tas &/%profile-image |]
      [or/~[pro/%jpg pro/%png] (sy %sig ~)]
      :-  [|/%tas &/%header-image |]
      [or/~[pro/%jpg pro/%png] (sy %sig ~)]
      :-  [|/%tas &/%sigil-color |]
      [pro/%hexadecimal (sy %sig ~)]
      :-  [|/%tas &/%sigil-background-color |]
      [pro/%hexadecimal (sy %sig ~)]
      :-  [|/%tas &/%display-name |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%first-name |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%last-name |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%organization |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%phone-number |]
      [pro/%phone-number (sy %sig ~)]
      :-  [|/%tas &/%email |]
      [pro/%email (sy %sig ~)]
      :-  [|/%tas &/%url |]
      [pro/%url (sy %sig ~)]
      :-  [|/%tas &/%birthday |]
      [pro/%birthday (sy %sig ~)]
      :-  [|/%tas &/%username |/%t |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas |/%tas &]
      [[%any ~] (sy %sig ~)]
  ==
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      [~ [%sig !>(~)]]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(our.bowl ship.src.bowl)
      ::  XX get 'default' from pith.src.bowl
      ?+      stud
            !!
          %email
        =/  txt  !<(cord vaz)
        :_  [%sig !>(~)]
        :~  :-  (welp here.bowl #/default/email)
            [%make %email `[%email !>((email txt))] ~]
        ==
      ::
          %birthday
        =/  dat  !<(birthday vaz)
        :_  [%sig !>(~)]
        :~  :-  (welp here.bowl #/default/birthday)
            [%make %birthday `[%birthday !>(dat)] ~]
        ==
      ::
          %phone-number
        =/  txt  !<(cord vaz)
        :_  [%sig !>(~)]
        :~  :-  (welp here.bowl #/default/phone-number)
            [%make %phone-number `[%phone-number !>((phone-number txt))] ~]
        ==
      ::
          %url
        =/  txt  !<(cord vaz)
        :_  [%sig !>(~)]
        :~  :-  (welp here.bowl #/default/url)
            [%make %url `[%url !>((url txt))] ~]
        ==
      ==
  --
--
