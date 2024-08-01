# Eyre

Eyre is Urbit's HTTP server vane. Shrubbery can use Eyre to serve UIs to your device and serve resources of all kinds to the clearweb. 

## Types

The Eyre shane stores three things in its state.
- `by-id`: Map of HTTP request ID to the pith of the shrub which is handling the request.
- `by-pith`: Map of pith to ID; `by-id` in reverse.
- `bind`: Map of Eyre [binding](https://docs.urbit.org/system/kernel/eyre/reference/data-types#binding)s to `pith`s.

```
+$  eyre
  $:  by-id=(map @ta pith)
      by-pith=(map pith @ta)
      bind=(map binding:^^eyre pith)
  ==
```

The Eyre shane manages several requests and responses, covered in detail below.

```
++  eyre
  |%
  +$  req  [%connect =binding:^eyre =pith]
  +$  res  [%bound ~]
  +$  sign  (pair @ta gift)
  +$  gift
    $%  [%head =response-header:http]
        [%data dat=(unit octs)]
        [%done ~]
    ==
  +$  task
    (pair @ta inbound-request:^eyre)
  --
```

Note: `task:eyre:neo` is the type of [`inbound-request`](https://docs.urbit.org/system/kernel/eyre/reference/data-types#inbound-request) that comes in via HTTP from the clearweb. You wouldn't send this from a shrub.

## Tasks

### `%connect` 

The `%connect` pail is the Eyre shane's version of Eyre's [`%request`](https://docs.urbit.org/system/kernel/eyre/reference/tasks#request) task. It's the only type of `req:eyre:neo`.

In the code below, we construct a `req:eyre:neo` by giving it a `binding:eyre` and a `pith:neo`. The `binding` corresponds to the subdomain `/neo/sky` (to serve a frontend to `<localhost:port>/neo/sky`) and the `pith` is `here.bowl`, the location of this shrub.

```
++  init
  |=  pal=(unit pail:neo)
  :_  sig/!>(~)
  =/  =pith:neo  #/[p/our.bowl]/$/eyre
  =/  =binding:eyre  [~ ~[%neo %sky]]
  =/  =req:eyre:neo  [%connect binding here.bowl]
  :~  [pith %poke eyre-req/!>(req)]
  ==
```

## Gifts

### `%head`

The HTTP header of the response. Has to be given immediately so the connection doesn't time out.

### `%data`

The actual data of the HTTP request.

### `%done`

HTTP request has finished, the connection has closed.

### `%bound`

URL has been successfully bound.
