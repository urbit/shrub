# Iris

[Iris](https://docs.urbit.org/system/kernel/iris) is the HTTP client vane, used to fetch resources from the web.

## Types

The Iris shane takes one request (`res`) and one response (`req`).

```
++  iris
  |%
  +$  req  [hand=pith dat=request:http]
  +$  res  [hand=pith dat=request:http]
  --
```

In both types the `hand` is "the wire" as far as Shrubbery is concerned, and `dat` is Eyre's `request:http`.

## Tasks

### `%request`

Iris' [`%request`](https://docs.urbit.org/system/kernel/iris/reference/tasks#request) task fetches a remote HTTP resource. You can send this task in Shrubbery through the `%iris-req` poke.

```
++  poke
  |=  [=stud:neo vax=vase]
  ^-  (quip card:neo pail:neo)
  =+  !<(keys=@t q.pail)
  ?+    stud  !!
    ...
      %openapi-req
    =+  !<(=req:openai vax)
    ?>  ?=(%chat-create -.q.req)
    :_  [%txt !>(keys)]
    =/  =request:http
      :*  %'POST'
          'https://api.openai.com/v1/chat/completions'
          (headers:openai keys)
          `(as-octt:mimes:html (trip (en:json:html (chat-create-req:enjs:openai +.q.req))))
      ==
    ~&  [%req request]
    =/  =req:iris:neo  [#/foo request]
    :~  [#/[p/our.bowl]/$/iris %poke [%iris-req !>(req)]]
    ==
  ==
```

## Gifts

### `%http-response`

When Eyre receives the HTTP resource, it sends Shrubbery a [`client-response`](https://docs.urbit.org/system/kernel/iris/reference/data-types#client-response) head-tagged with `%finished`. This response contains the `hand` pith specified in the request, so once you've routed to the `%iris-res` pail you could further route on the `hand` to handle more than one kind of HTTP response.

```
++  poke
  |=  [=stud:neo vax=vase]
  ^-  (quip card:neo pail:neo)
  =+  !<(keys=@t q.pail)
  ?+    stud  !!
      %iris-res
    =+  !<(=res:iris:neo vax)
    ?.  ?=(%finished -.dat.res)
      `pail
    ?~  full-file.dat.res
      `pail
    =/  body=cord  q.data.u.full-file.dat.res
    =/  jon=json  (need (de:json:html body))
    ~&  [%jon jon]
    ~&  [%result (chat-completion-res:dejs:openai jon)]
    `pail
    ...
  ==
```

