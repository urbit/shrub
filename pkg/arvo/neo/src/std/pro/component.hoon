=<
$:  status=? 
    =behavior 
    =logic
==
|%
+$  behavior  (set option)
::  Determines what happens to status on poke
+$  option  
  $%  %flip     :: invert status
      %once     :: set status to %.y
      %if-dep   :: only if logic outputs %.y
      %auto     :: copy logic output to status on %rely
  ==
::  How to compute deps' values
+$  logic
  $%  [%none ~]     :: return %.n
      [%one =uno]
      [%both =dos]
  ==
+$  uno  
  $%  %mirror    :: one dep, mirror status
      %inverse   :: one dep, invert status
  ==
+$  dos  
  $%  %and       :: two deps, mirror their status' AND
      %nand      :: two deps, mirror their status' NAND
      %or        :: two deps, mirror their status' OR
      %xor       :: two deps, mirror their status' XOR
  ==
--