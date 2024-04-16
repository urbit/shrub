|%
::  $bccn: A buccen
::
+$  bccn
  $%  [%foo p=@]      ::  a foo
      [%bar p=@ q=@]  ::  a bar
  ==
::  +cor: An arm that resolves to a core
++  cor
  |%
  ::  +arm: a nested arm
  ++  arm  3
  --
::  $fork: A union type
::
+$  fork
  $?  %x  ::  Excellet
      %y  ::  Why
      %z  ::  Zeds dead
  ==
::  $jail: A cell of atoms
::
+$  jail
  $:  foo=@  :: A fooy thing
      bar=@  :: Barred out
  ==
 
::  +foo: a constant
::
::    foo is what is known as a metasyntactic variable
::
++  foo
  ::  (a very strange bar)
  %bar
::    $typ: A type
::
::  typ is a pair of atoms
+$  typ   
  $:  fst=@  ::  first atom
      snd=@  ::  second atom
  ==
--
