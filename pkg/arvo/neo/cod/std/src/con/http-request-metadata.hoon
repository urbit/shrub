/@  http-request
/@  metadata
/-  serv=sky-server
:-  [%http-request %$ %metadata]
|=  =http-request
^-  metadata
=/  pam  (~(uni by pam:(parse-url:serv http-request)) (parse-form-body:serv http-request))
=/  bod  ~(. by pam)
~&  >>>  pax:(parse-url:serv http-request)
=/  =pith:neo  
    %-  pave:neo  
    pax:(parse-url:serv http-request)
=/  xml=mane  !<  mane
    %+  slap  !>(~) 
      %-  ream
      %-  got:bod  'mane'
=/  text=tape  (trip (got:bod 'text'))
;;  metadata
%-  malt 
:~  :-  pith
    `(set (pair mane tape))`(sy [xml text] ~)
==