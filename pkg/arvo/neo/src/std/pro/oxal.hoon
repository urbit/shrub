|^
$:
  what=(unit oxal-node)
  name=@t
  tags=(list [tag=term filtered=?])
  acls=$~([%.n %.n] [read=? write=?])
  kods=(list pith)
==
+$  oxal-node
  $%
    [%symlink ~]                 :: pith
    [%formula ~]                 :: [code=hoon $-(bowl:neo pail:neo)]
    [%document =pail:neo]
  ==
--
