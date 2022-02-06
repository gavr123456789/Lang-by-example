| iGuess iGuessCount iAnswer |

iGuess := -1.
iGuessCount := 0.
iAnswer := (1 to: 100) atRandom.

[ (iGuess ~= iAnswer) ]
whileTrue: [

  iGuess := FillInTheBlankMorph request: 'Guess the number'.
  iGuess := iGuess asNumber.
  iGuessCount := iGuessCount + 1.

  (iGuess > iAnswer)
  ifTrue: [
    Transcript show: 'Lower'.
    Transcript cr.
  ].

  (iGuess < iAnswer)
  ifTrue: [
	Transcript show: 'Higher'.
	Transcript cr.
  ].

  (iGuess = iAnswer)
  ifTrue: [
    'Correct: ' printNl.
    Transcript show: iAnswer.
    Transcript cr.
    Transcript show: iGuessCount.
    Transcript show: ' total guesses'.
    Transcript cr.
  ].
].