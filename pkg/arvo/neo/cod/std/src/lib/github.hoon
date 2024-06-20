|%
+$  user
  $:  id=@ud
      login=@t 
  ==
+$  issue-list  (list issue)
+$  issue
  $:  number=@ud
      state=?(%open %closed)
      title=@t
      body=(unit @t)
      =user

  ==
++  dejs
  =,  dejs:format
  |%
  ++  issue
    %-  ot
    :~  number/ni
        state/(su (perk %open %closed ~))
        title/so
        body/(mu so)
        user/user
    ==
  ++  issue-list  (ar issue)
  ++  user
    %-  ot
    :~  id/ni
        login/so
    ==
  --

--
