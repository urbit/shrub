# Chapter 1: Counter

One of the simplest shrubs imaginable is a counter that stores one number and takes one poke: make the number go up.

By the end of this chapter you'll understand the structure of a shrub, and how to write a trivial one of your own. This won't explain Shrubbery from first principles — you don't neeed to understand it from first principles to work with it — but you'll see how similar a shrub is to a Gall agent, and where they differ.

You'll also get a glimpse of how one shrub can accomodate various frontend interfaces. We'll make a simple HTMX frontend for Sky, a namespace browser and dev environment.

This chapter is the only real "tutorial" in that Counter doesn't currently exist on your ship. You can build Counter yourself following along this guide. The remaining three chapters will discuss shrubs that already exists in your `%neo` desk: Diary, Messenger, and Tasks.

In the Diary tutorial, you'll see how read and write data to the namepsace. In Messenger, you'll see how shrubs can interact with eachtoher through the dependencies system as well as pokes. In the Tasks chatper, we'll mostly look at how a full-featured UI works in the current system.

This chapter is largely about pattern-matching what you know about Gall to the new system.

## Counter in Gall and Shrubbery
Here's the Gall agent you'll reimplement in Shrubbery. It stores one number and takes one poke, `%inc`, to increment the number.

```hoon
/+  dbug, default-agent, verb
|%
+$  versioned-state
$%  state-0
==
+$  state-0
$:  %0
    value=@ud
==
+$  counter-action
  $%  [%inc ~]
  ==
+$  card  card:agent:gall
--
::
%+  verb  &
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
::
++  on-init   on-init:def
++  on-peek   on-peek:def
++  on-watch  on-watch:def
++  on-arvo   on-arvo:def
++  on-leave  on-leave:def
++  on-agent  on-agent:def
++  on-fail   on-fail:def
++  on-save
  !>(state)
::
++  on-load
  |=  old=vase
  ^-  (quip card _this)
  :-  ~
  %=  this
    state  !<(state-0 old)
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+  mark
    (on-poke:def mark vase)
  ::
      %noun
    =/  act
      !<(counter-action vase)
    ?+  -.act
      (on-poke:def mark vase)
    ::
        %inc
      :-  ~
      %=  this
        value  +(value)
      ==
    ==
  ==
--
```

Here's the same thing in Shrubery.

```hoon
/@  number
/@  counter-diff
^-  kook:neo
|%
++  state  pro/%number
++  poke   (sy %counter-diff ~)
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(number state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  ((list card:neo) pail:neo)
      `(need old)
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  ((list card:neo) pail:neo)
      =/  act  !<(counter-diff vaz)
      ?>  =(-.act %inc)
      `number/!>(+(state))
  --
--
```

## Shrub structure
Let's look at the structure of `/imp/counter`.

```hoon
/@  number
/@  counter-diff
```

These lines import two types from our `/pro` folder: `number` and `counter-diff`. To import from `/pro` we use the `/@` rune, which is new for Shrubbery.

```hoon
,@ud
```

```hoon
,[%inc ~]
```

A shrub is a five-arm `|%` core — called a `kook:neo` — with an inner two-arm core called a `form:neo`. The `kook` defines type information about the shrub, and the inner `form` contains business logic.

At first glance the `kook` might look familiar to Gall developers, but this is all new logic defining 1) what's stored at this node in the namespace 2) what can be stored below this node, and 3) what we expect to be stored at existing nodes we declare as dependencies.

```hoon
::  $kook:neo
|%
::
::  type this value in the namespace
++  state
  !!
::
::  type acceptable requests to
::  change this value in the namespace
++  poke
  !!
::
::  constrain the state/pokes of the shrubs that
::  can be created under this shrub in the namespace
++  kids
  !!
::
::  declare the state/pokes we expect for existing shrubs
::  whose state we will track, and whose state changes we
::  will react to
++  deps
  !!
::
::  handle state changes in this shrub,
::  its kids, and its dependencies
++  form
  !!
--
```

The `form` is where the Gall agent-like application logic lives. We only need two arms, which are slightly modified versions of `+on-init` and `+on-poke`.

```hoon
::  $form:neo
|_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
::
::  like +on-init, run some logic when this shrub is created
::  unlike +on-init, potentially accept some injected
::  state as the initial state
++  init
  |=  old=(unit pail:neo)
  ^-  ((list card:neo) pail:neo)
  !!
::
::  like +on-poke, route pokes based on head tags, apply
::  state changes, and send new pokes accordingly
++  poke
  |=  [=stud:neo vaz=vase]
  ^-  ((list card:neo) pail:neo)
  !!
--
```

## Counter logic
Now that we understand the shape of a shrub, let's look at the application logic of the Counter shrub. You can copy the following into the relevant files or type it out for yourself.

There are lots of new types here which are flagged with the `:neo` suffix in code and documentation. We'll cover those in detail in the following chapters.

### /pro/number.hoon
```hoon
,@ud
```

### /pro/counter-diff.hoon
```hoon
,[%inc ~]
```

### /imp/counter.hoon
```hoon
/@  number        ::  import number type
/@  counter-diff  ::  import counter-diff type
::
::  outer core
^-  kook:neo
|%
::
::  the state of counter is a number
::  %pro is part of the curb:neo, which defines types
++  state
  ^-  curb:neo
  [%pro %number]
::
::  the set of pokes counter takes only contains %counter-diff
::  a stud:neo is like a mark in Gall
++  poke
  ^-  (set stud:neo)
  (sy %counter-diff ~)
::
::  counter has no dependencies
++  deps
  ^-  deps:neo
  *deps:neo
::
::  inner core
++  form
  ^-  form:neo
  ::  sample has context like bowl, version numbers, and
  ::  counter's previous state
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    ::
    ::  de-vase counter's old state
    +*  state  !<(number state-vase)
    ::
    ::  +init, like +on-init
    ++  init
      ::
      ::  return no cards and old state
      ::  pail:neo is a (pair stud:neo vase),
      ::  like a cell of a mark and data
      |=  old=(unit pail:neo)
      ^-  ((list card:neo) pail:neo)
      [~ (need old)]
    ::
    ::  +poke, like +on-poke
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  ((list card:neo) pail:neo)
      ::
      ::  de-vase the poke's data
      =/  act
        !<(counter-diff vaz)
      ::
      ::  crash if we're not incrementing
      ?>  =(-.act %inc)
      ::
      ::  return no cards, return a (pair stud:neo vase)
      ::  where the vase contains the incremented state
      [~ [%number !>(+(state))]]
  --
--
```

Once you've saved `/imp/counter.hoon` and the `/pro` files, run `|commit %base` and %neo will add it to its state. We can now interact with this shrub in the Dojo.

## Poking the shrub
A `card:neo` is a `(pair pith note)`.

A `pith` is a list of head-tagged cells forming a typed path. This is the location of the shrub to which your card will be sent.
* The path `/examples/counter/one` will be a pith `~[%examples %counter %one]`.
* The path `/~sampel/examples/counter/one` will be a pith `~[[%p ~sampel] %examples %counter %one]`.
* The path `/~sampel/examples/counter/1` will be a pith `~[[%p ~sampel] %examples %counter [%ud 1]]`.

(You might also see a `pith` written in this irregular form `#/[p/our.bowl]/examples/counter/one`.)

A `note` is one of the four types of command any shrub will accept.

```hoon
+$  note
  $%  [%make made]             ::  create a shrub
      [%poke =pail]            ::  poke a shrub
      [%tomb cas=(unit case)]  ::  tombstone a case of the shrub
      [%cull ~]                ::  replace a shrub with ~
  ==
```

If the `pith` doesn’t correspond to the location of an existing shrub, you’ll have to `%make` a shrub there before doing anything else.

Let’s `%make` a shrub at path `/examples/counters/one` from the Dojo, giving it an initial state of `0`. We’ll explain the structure of the `%make` note in more detail in the Diary tutorial.

```
:neo &neo-card [~[[%p our] %examples %counters %one] [%make %counter `[%number !>(0)] ~]]
```

You should see `>> %make /examples/counters/one` in the Dojo if successful.

Now we can now send a `%poke` to the counter shrub at this path.

```
:neo &neo-card [~[[%p our] %examples %counters %one] [%poke [%counter-diff !>([%inc ~])]]]
```

## Counter frontend in Sky
Shrubbery aims to be interface-agnostic. One part of that vision is `/con` files, which make it possible to convert data from one backend type to any frontend type, and one frontend type to any backend type. Here are Counter’s `/con` files.

### Converting number to HTMX
```hoon
/@  number  ::  @ud
::  import /lib/feather-icons (see feather-intro.txt)
/-  feather-icons
::  declare that this is a conversion from number to HTMX
:-  [%number %$ %htmx]
::
::  this gate accepts a number and a bowl:neo;
::  we'll access bowl:neo in the UI to access the
::  here.bowl of the shrub that's using this /con file
|=  =number
|=  =bowl:neo
::
::  this gate returns a manx, which is what Hoon uses
::  to store dynamic XML nodes; in this case we'll use
::  Sail to specify a manx that expects the HTMX library
::  to be available on the frontend
^-  manx
::
::  open a <div class="p3 fc g2 ac br2">
::  these utility classes are specified in feather.css,
::  which this /con file expects on the frontend
;div.p3.fc.g2.ac.br2
  ::  <h1>Counter</h1>
  ;h1:  Counter
  ::  <p>{number}</p>
  ;p:  {<number>}
  ::  open a <form> with HTMX attributes
  ;form
    ::
    ::  hx-post will issue a POST request to the provided
    ::  url and swap response into the DOM
    =hx-post  "/neo/hawk{(en-tape:pith:neo here.bowl)}?stud=counter-diff"
    ::
    ::  hx-target specifies the target for hx-post's DOM
    ::  swap: the element with class "loading"
    =hx-target  "find .loading"
    ::
    ::  hx-swap specifies how the response to hx-post's
    ::  request will be swapped in relative to the target
    =hx-swap  "outerHTML"
    ::
    ::  here, the head attribute specifies the poke that
    ::  hx-post will send to the target shrub; look at
    ::  /con/node-counter-diff.hoon for more on =head
    =head  "inc"
    ::
    ::  below, the classes "loaded", "loader", and
    ::  "loading" provide loading spinner behavior on
    ::  sending and receiving this form's POST request
    ::
    ::  <button class="bd1 br1 pr b1 hover loader">
    ;button.bd1.br1.p2.b1.hover.loader
      ::  <span class="loaded">Increment</span>
      ;span.loaded:  Increment
      ::  <span class="loading">
      ;span.loading
        ::  import +loading sail from /lib/feather-icons
        ;+  loading.feather-icons
      ==  ::  </span>
    ==  ::  </button>
  ==  ::  </form>
==  ::  </div>
```

This converts the `number` type to a `manx`, specifically targeting a frontend that uses the [HTMX](https://htmx.org/) library. You don’t need to know HTMX to build shrubbery frontends or to follow the rest of this tutorial.

This isn’t a 1:1 conversion from one data type to another; we’re not converting Hoon `number=1` to JSON `{ "number": 1 }`. If a frontend asks for a `number` in the form of HTMX, we return some [Sail](https://docs.urbit.org/language/hoon/guides/sail) that interpolates the `number` in a basic interface consisting of a heading, the number, and one button to send an `%inc` poke to the Counter shrub.

### Converting Node to %counter-diff
```hoon
/@  node          ::  manx
/@  counter-diff  ::  [%inc ~]
::  import /lib/manx-utils, which helps us work with XML
/-  manx-utils
::  declare this is a conversion from node to counter-diff
:-  [%node %$ %counter-diff]
|=  =node
^-  counter-diff
::  initiate the manx-utils door with node
=/  mu  ~(. manx-utils node)
::
::  got:mu gets an attribute from the manx by its name
::  in this case, the =head specified in /con/number-htmx
::  we expect the head from the manx to be %inc,
::  but we could add more terms to that type union...
=/  head  (?(%inc) (got:mu %head))
::
::  return the [%inc ~] poke
::  if we wanted to handle multiple pokes,
::  we'd switch on the type of head here
[head ~]
```

This is a more straightforward conversion from a dynamic XML node (in this case, HTMX), to a `%counter-diff`. Using the [manx-utils](https://github.com/tinnus-napbus/manx-utils) Hoon library for brevity, we extract the XML node’s `head` attribute (which has been converted to the term `%inc` on its way here) and use that to form the `%counter-diff`, which is `[%inc ~]`.

Testing the Counter in Sky
The Sky homepage shows you one tile for all of the shrubs who are the immediate children of your `/home` shurb, which was made for you upon booting `%neo` for the first time. You won’t see a Counter tile there because there is no `/counter` shrub beneath `/home`, so let’s make one.

```
:neo &neo-card [~[[%p our] %home %counter] [%make %counter `[%number !>(0)] ~]]
```

If you refresh your browser you should now see a tile labelled “counter”. Click there to see the Counter frontend from the `/con` file and increment the state of the `/counter` shrub.

## Building on the Counter
If you know your way around Gall, you should now be able to make some minor changes to the counter example above. Try the following:

* Initialize the shrub with a default state if the given `(unit vase)` in `+init` is empty.
* Add more pokes like `%dec`, `%add`, and `%sub` on the backend.
* Add those pokes to the frontend interface, with one button per poke.
