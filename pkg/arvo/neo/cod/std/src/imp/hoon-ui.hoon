/@  hoon
/@  ui-event
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely %gift ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^  %src  &  [pro/%hoon (sy %hoon ~)]
      ~
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    manx/!>((render bowl))
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    =/  dst  p:(~(got by deps.bowl) %src)
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/sud !!)
        %ui-event
      =/  eve  !<(ui-event vaz)
      ?+  path.eve  ~|(missing-event-handler-for/path.eve !!)
        [* %code ~]
          =/  new  (~(got by data.eve) '/event/detail')
          :_  pail
          :~  [dst %poke txt/!>(new)]
          ==
      ==
    ::
        %rely
      `manx/!>((render bowl))
    ==
  --
--
::
|%
++  render
  |_  =bowl:neo
  ++  $
    ^-  manx
    =/  =iota  (rear p:(~(got by deps.bowl) %src))
    ;html
      ;head
        ;title: {(trip ?@(iota iota (scot iota)))} [txt]
        ;link
          =rel  "stylesheet"
          =href  "/blue/blue-mime/{(scow %p our.bowl)}/static/feather"
          ;
        ==
        ;link(rel "stylesheet", href "https://cdn.jsdelivr.net/npm/codemirror@5.65.12/lib/codemirror.css");
        ;link
          =rel  "icon"
          =href  "https://em-content.zobj.net/source/google/298/page-facing-up_1f4c4.png"
          ;
        ==
        ;+  style
      ==
      ;body.wf.hf.hoon.fc
        ;script(src "https://cdn.jsdelivr.net/npm/codemirror@5.65.12/lib/codemirror.js");
        ;+  (contents value)
        ;script
          ;+  ;/  %-  trip
          '''
          CodeMirror.defineMode('hoon', function() {
            return {
              token: function(stream) {
                if (stream.match('::')) {
                  stream.skipToEnd(); // Skip the rest of the line
                  return 'comment';
                }
                stream.next(); // Move to the next character
                return null; // No specific token
              },
              lineComment: '::',
            };
          });
          var el = document.getElementById('code');
          var editor = CodeMirror.fromTextArea(el, {
              lineNumbers: true,
              theme: 'feather',
          });
          editor.getWrapperElement().classList.add('wf');
          editor.getWrapperElement().classList.add('grow');
          console.log('wrapper', editor.getWrapperElement());
          editor.on('change', function(instance, changeObj) {
            let detail = instance.getValue();
            el.dispatchEvent(new CustomEvent('hoon-change', { detail, bubbles: false, cancelable: true, composed: true }));
          });
          '''
        ==
      ==
    ==
  ++  contents
    |=  hon=hoon
    =/  src=wain  (to-wain:format hon)
    ;textarea#code
      =name  "code"
      =event  "/hoon-change/code"
      =return  "/event/detail"
      =debounce  "0.6"
      ;*
      %+  turn  src
      |=  lin=@t
      ;/  "{(trip lin)}\0a"
    ==
  ++  dst  p:(~(got by deps.bowl) %src)
  ++  value
    ^-  hoon
    =/  =lore:neo  q:(~(got by deps.bowl) %src)
    =/  =pail:neo  pail:(~(got of:neo lore) /)
    !<(hoon q.pail)
  --
  ++  style
  ;style
    ;+  ;/  %-  trip
    '''
    .cm-s-feather.CodeMirror {
        background-color: var(--b0);
        color: var(--f0);
    }
    .cm-s-feather .CodeMirror-gutters {
        background-color: var(--b0);
        border-right: 0.5px solid var(--b4);
    }
    .cm-s-feather .CodeMirror-linenumber {
        color: var(--f2);
        opacity: 0.5;
    }
    .cm-s-feather .CodeMirror-cursor {
        border-left: 1px solid var(--f2);
    }
    .cm-s-feather .CodeMirror-selected {
        background-color: var(--b2);
    }
    .cm-s-feather .cm-keyword {
        color: var(--f1);
    }
    .cm-s-feather .cm-string {
        color: var(--f1);
    }
    .cm-s-feather .cm-comment {
        color: var(--f4);
    }
    '''
  ==
--
