/@  message
|%
++  render-message
  |=  msg=message
  ;div.fc.g2.border.p3.br1
    ;div.fr.ac.jb
      ;p.s-2.f3: {(scow %p author.msg)}
      ;p.s-2.f3: {(scow %da time.msg)}
    ==
    ;p: {(trip contents.msg)}
  ==
--
