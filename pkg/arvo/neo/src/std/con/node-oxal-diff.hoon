/@  node
/@  oxal-diff
/-  _/manx-utils
:-  [%node %oxal-diff]
|=  nod=node
|^
  ^-  oxal-diff
  =/  mu  ~(. manx-utils nod)
  =/  head  (@tas (got-attribute:mu %head))
  ?+  head  ~|([%unknown-head head] !!)
      %restud
    =/  stud  (@tas (volue:mu "stud"))
    [%restud stud]
      %edit
    =/  stud  (@tas (got-attribute:mu %stud))
    =/  text  (@t (volue:mu "text"))
    =/  vax
      ?+  stud  !!
          %txt
        !>(text)
          %img-url
        !>(text)
          %iframe-url
        !>(text)
          %audio-url
        !>(text)
          %video-url
        !>(text)
      ==
    [%edit `pail:neo`[stud vax]]
      %prepend
    [%prepend ~]
      %rename
    [%rename (@t (got-attribute:mu %value))]
      %retag
    [%retag (de-tags (got-attribute:mu %value))]
  ==
++  de-tags
  |=  =cord
  ^-  (list term)
  (rash cord (more (star ace) sym))
::
--
