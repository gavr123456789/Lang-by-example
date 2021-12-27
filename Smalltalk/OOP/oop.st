" Creating a new class "

"
some ts analog
class Account implements Object {
  public balance: any
  // method for class
  public static function new() {
    let x = new Object();
    x.init();
    return x;
  }
  // method for instance
  public function init() {
    this.balance = 0;
  }
}
"
Object subclass: Account [
    | balance |

    "method for class"
    Account class >> new [  
        <category: 'instance creation'> "metadata"
        | r |         "local variable"
        r := super new.
        r init.
        ^r            "return"
    ]

    "method for instance"
    init [
        <category: 'initialization'>
        balance := 0
    ]
    "lets override prinNl"
    printNl [
      ('Account with balance: ' , balance asString) printNl.
    ]
]

a := Account new. 
a printNl.

" add two new method "
Account extend [
  spend: amount [
    <category: 'moving money'>
    balance := balance - amount
  ]
  deposit: amount [
    <category: 'moving money'>
    balance := balance + amount
  ]
]

a deposit: 125.
a deposit: 20.
a spend: 10.

a printNl.


" lets add subclass "

Account subclass: Checking [
  | checknum checksleft |

  init [
    <category: 'initialization'>
    checksleft := 0.
    ^super init
  ]

  newChecks: number count: checkcount [
    <category: 'spending'>
    checknum := number.
    checksleft := checkcount
  ]

  writeCheck: amount [
    | num |

    (checksleft < 1)
        ifTrue: [ ^self error: 'Out of checks' ].

    num := checknum.
    checknum := checknum + 1.
    checksleft := checksleft - 1.
    self spend: amount
    ^ num
   ]
]


" extend Checking "

Checking extend [
  | history |

  init [
    <category: 'initialization'>
    checksleft := 0.
    history := Dictionary new.
    ^ super init
  ]
  writeCheck: amount [
    <category: 'spending'>
    | num |

    "Sanity check that we have checks left in our checkbook"
    (checksleft < 1)
        ifTrue: [ ^self error: 'Out of checks' ].

    "Make sure we've never used this check number before"
    num := checknum.
    (history includesKey: num)
        ifTrue: [ ^self error: 'Duplicate check number' ].

    "Record the check number and amount"
    history at: num put: amount.

    "Update our next checknumber, checks left, and balance"
    checknum := checknum + 1.
    checksleft := checksleft - 1.
    self spend: amount.
    ^ num
  ]

  check: num [
    | c |
    c := history
        at: num
        ifAbsent: [ ^self error: 'No such check #' ].
    ^c
  ]

  printChecks [
    history keysAndValuesDo: [ :key :value |
      key print.
      ' - ' print.
      value printNl.
    ]
  ]
]