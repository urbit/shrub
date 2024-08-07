# Gall

Gall is Arvo's userspace software vane. Shrubbery interfaces with Gall by accepting subscription updates, {what else?}.

## Types

???

{peer could be subscription, peek is probably a scry?}

{what is `=<  gall` storing?}

```
++  gall
  =<  gall
  |%
  +$  gall
    $:  peer=(jug pith pith)
        peek=(map pith peek:^^gall)
    ==
  --
```

The Gall shane takes four requests and only gives one response, a `(pair pith sign)` for subscription updates from agents.

```
++  gall
  |%
  +$  req
    $%  [%peek p=@dr]
        [%keep ~]
        [%reap ~]
        [%peer ~]
    ==
  +$  peek  [src=(set pith) refresh=@dr]
  +$  sign  sign:agent:^gall
  +$  res   (pair pith sign)
  --
```

## Tasks

### `%peek`

???

### `%keep`

???

### `%reap`

???

### `%peer`

???

## Gifts

### `(pair pith sign)`

Subscription update from a Gall agent, in practice usually `%facts`. The `pith` corresponds to the [`wire`](https://docs.urbit.org/courses/app-school/types#wire) and the `sign` the [`sign:agent:gall`](https://docs.urbit.org/system/kernel/gall/reference/data-types#signagent).
