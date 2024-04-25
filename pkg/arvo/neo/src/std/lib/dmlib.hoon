/@  message
|%
++  render-message
  |=  msg=message
  ;div.fc.g2.border.p3.br1
    ;div.fr.ac.jb
      ;p.s-2.f3: {(scow %p from.msg)}
      ;p.s-2.f3: {(scow %da now.msg)}
    ==
    ;p: {(trip contents.msg)}
  ==
--
