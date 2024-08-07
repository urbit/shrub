# Clay

Clay is Arvo's filesystem vane. Shrubbery uses Clay to track changes in specific files.

## Types

The Clay shane stores a map of {pith} to {dk how to word this} in its state.

```
+$  clay
  (map [src=pith hand=pith] [case=@ud =desk =path as=(unit mark)])
```

The Clay shane takes two requests, one response, and defines a `peer` type for subscriptions. The `peer` is a desk, a path to the file in question in that desk, and optionally a specific mark we'd like to receive updated versions of that file through.

```
++  clay
  |%
  +$  peer  [=desk =path as=(unit mark)]
  +$  req
    $%  [%peer =pith =peer]
        [%pull =pith]
    ==
  +$  res  [=pith case=@ud files=(axol cage)]
  --
```

## Tasks

### `%peer`

Subscribe to a file at the given `pith`.

### `%pull`

Cancel a subscription to a file at the given `pith`.

## Gifts

The response from Clay, relayed from Shrubbery to the userspace shrub.

```
+$  res  [=pith case=@ud files=(axol cage)]
```

Contains the `pith` to the relevant directory in Clay, a version number for that directory, and a recursive tree of `cage`s containing the updated files in that directory.
