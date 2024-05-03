/@  accel
/@  accel-cell
:-  [%accel %htmx]
|=  =accel
|=  =bowl:neo
|^
  ;div.fc.wf.hf
    ;+  table
    ;+  dashboard-stub
    ;+  style
  ==
++  table
  ;table.wf.grow.basis-half
    ;tbody.scroll-none
      ;*
      %+  turn  (gulf 1 10)
      |=  x=@
      ;tr
        ;*
        %+  turn  (gulf 1 4)
        |=  y=@
        =/  val=(unit pail:neo)  (~(get by kids.bowl) ~[ud/x ud/y])
        =/  vaf  (fall val [%accel-cell !>(*accel-cell)])
        ;td.border
          ;+
          =/  cell  !<(accel-cell +:vaf)
          ;button.b1.wf.hf.scroll-none.hover
            =hx-get  "/neo/hawk{(en-tape:pith:neo here.bowl)}/{<x>}/{<y>}"
            =hx-target  "#dashboard"
            =hx-swap  "innerHTML"
            ;+
            ?~  result.cell  ;/("")
            =/  eachy  (need result.cell)
            ?-  -.eachy
              %.y
                ;div.mono: {(of-wall:format (~(win re (sell +.eachy)) 0 999))}
              %.n
                ;span: ERROR
            ==
          ==
        ==
      ==
    ==
  ==
++  dashboard-stub
  ;div#dashboard.basis-half.fc.wf;
++  style
  ;style.hidden
    ;+  ;/  %-  trip
    '''
    table {
      border-collapse: collapse;
      width: 100%;
      table-layout: fixed;
    }
    .scroll-none {
      overflow-x: auto;
    }
    td, tr {
      margin: 0;
      padding: 0;
      height: fit-content;
    }
    '''
  ==
--
