|%
++  svg
  |=  [viewbox=tape body=manx]
  ;svg
    =xmlns  "http://www.w3.org/2000/svg"
    =viewBox  viewbox
    =width  "1em"
    =fill  "currentColor"
    =style  "display: flex; font-size:inherit;"
    ;+  body
  ==
++  chevron-left
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M560-240 320-480l240-240 56 56-184 184 184 184-56 56Z"
    ;
  ==
++  chevron-right
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M504-480 320-664l56-56 240 240-240 240-56-56 184-184Z"
    ;
  ==
++  chevron-first
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M240-240v-480h80v480h-80Zm440 0L440-480l240-240 56 56-184 184 184 184-56 56Z"
    ;
  ==
++  chevron-last
  %+  svg  "0 -960 960 960"
  ;path
    =d  "m280-240-56-56 184-184-184-184 56-56 240 240-240 240Zm360 0v-480h80v480h-80Z"
    ;
  ==
++  close
  %+  svg  "0 -960 960 960"
  ;path
    =d  "m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"
    ;
  ==
++  outline
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M120-240v-80h240v80H120Zm0-200v-80h480v80H120Zm0-200v-80h720v80H120Z"
    ;
  ==
++  minimize
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M240-120v-80h480v80H240Z"
    ;
  ==
++  settings
  %+  svg  "0 -960 960 960"
  ;path
    =d  "m370-80-16-128q-13-5-24.5-12T307-235l-119 50L78-375l103-78q-1-7-1-13.5v-27q0-6.5 1-13.5L78-585l110-190 119 50q11-8 23-15t24-12l16-128h220l16 128q13 5 24.5 12t22.5 15l119-50 110 190-103 78q1 7 1 13.5v27q0 6.5-2 13.5l103 78-110 190-118-50q-11 8-23 15t-24 12L590-80H370Zm70-80h79l14-106q31-8 57.5-23.5T639-327l99 41 39-68-86-65q5-14 7-29.5t2-31.5q0-16-2-31.5t-7-29.5l86-65-39-68-99 42q-22-23-48.5-38.5T533-694l-13-106h-79l-14 106q-31 8-57.5 23.5T321-633l-99-41-39 68 86 64q-5 15-7 30t-2 32q0 16 2 31t7 30l-86 65 39 68 99-42q22 23 48.5 38.5T427-266l13 106Zm42-180q58 0 99-41t41-99q0-58-41-99t-99-41q-59 0-99.5 41T342-480q0 58 40.5 99t99.5 41Zm-2-140Z"
    ;
  ==
++  loading
  %+  svg  "0 0 44 44"
  ;g(fill "none", fill-rule "evenodd", stroke-width "2", stroke "currentColor")
    ;circle(cx "22", cy "22", r "1")
      ;animate(attributeName "r", begin "0s", dur "1.8s", values "1; 20", calcMode "spline", keyTimes "0; 1", keySplines "0.165, 0.84, 0.44, 1", repeatCount "indefinite");
      ;animate(attributeName "stroke-opacity", begin "0s", dur "1.8s", values "1; 0", calcMode "spline", keyTimes "0; 1", keySplines "0.3, 0.61, 0.355, 1", repeatCount "indefinite");
    ==
    ;circle(cx "22", cy "22", r "1")
      ;animate(attributeName "r", begin "-0.9s", dur "1.8s", values "1; 20", calcMode "spline", keyTimes "0; 1", keySplines "0.165, 0.84, 0.44, 1", repeatCount "indefinite");
      ;animate(attributeName "stroke-opacity", begin "-0.9s", dur "1.8s", values "1; 0", calcMode "spline", keyTimes "0; 1", keySplines "0.3, 0.61, 0.355, 1", repeatCount "indefinite");
    ==
  ==
++  add
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M440-440H200v-80h240v-240h80v240h240v80H520v240h-80v-240Z"
    ;
  ==
++  dot-grid
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M360-160q-33 0-56.5-23.5T280-240q0-33 23.5-56.5T360-320q33 0 56.5 23.5T440-240q0 33-23.5 56.5T360-160Zm240 0q-33 0-56.5-23.5T520-240q0-33 23.5-56.5T600-320q33 0 56.5 23.5T680-240q0 33-23.5 56.5T600-160ZM360-400q-33 0-56.5-23.5T280-480q0-33 23.5-56.5T360-560q33 0 56.5 23.5T440-480q0 33-23.5 56.5T360-400Zm240 0q-33 0-56.5-23.5T520-480q0-33 23.5-56.5T600-560q33 0 56.5 23.5T680-480q0 33-23.5 56.5T600-400ZM360-640q-33 0-56.5-23.5T280-720q0-33 23.5-56.5T360-800q33 0 56.5 23.5T440-720q0 33-23.5 56.5T360-640Zm240 0q-33 0-56.5-23.5T520-720q0-33 23.5-56.5T600-800q33 0 56.5 23.5T680-720q0 33-23.5 56.5T600-640Z"
    ;
  ==
++  remove
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M200-440v-80h560v80H200Z"
    ;
  ==
++  tree
  %+  svg  "0 -960 960 960"
  ;path
    =d  "M558-80H402v-160H120l160-240h-80l280-400 280 400h-80l160 240H558v160ZM270-320h160-76 252-76 160-420Zm0 0h420L530-560h76L480-740 354-560h76L270-320Z"
    ;
  ==
--
