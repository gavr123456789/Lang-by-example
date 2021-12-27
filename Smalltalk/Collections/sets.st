x := Set new.
" adding "
x add: 5; add: 7; add: 'foo'.
x printNl. "Set (7 5 'foo' )"
" removing "
x remove: 5.
x printNl. "Set (7 5 'foo' )"
" checks "
(x includes: 5) printNl. "false"
(x includes: 7) printNl. "true"


