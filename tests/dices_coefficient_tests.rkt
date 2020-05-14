#lang racket

(provide make-bigrams-test dices-coefficient-test)
(require (only-in "../modules/text-similarity/dices_coefficient.rkt" dices_coefficient make_bigrams))

(require rackunit)
(require rackunit/text-ui)

;;; Função de teste para a construção dos bigrams de uma palavra
(define make-bigrams-test 
  (test-suite
    "make-bigrams-test"
    (test-case "John Smith"
      (check-equal? (make_bigrams "John Smith") '(("J" "o") ("o" "h") ("h" "n") ("n" " ") (" " "S") ("S" "m") ("m" "i") ("i" "t") ("t" "h")))
    )

    (test-case "Smith, John D."
      (check-equal? (make_bigrams "Smith, John D.") '(("S" "m") ("m" "i") ("i" "t") ("t" "h") ("h" ",") ("," " ") (" " "J") ("J" "o") ("o" "h") ("h" "n") ("n" " ") (" " "D") ("D" ".")))
    )
    
    (test-case "ALGORITHMS ARE FUN"
      (check-equal? (make_bigrams "ALGORITHMS ARE FUN") '(("A" "L") ("L" "G") ("G" "O") ("O" "R") ("R" "I") ("I" "T") ("T" "H") ("H" "M") ("M" "S") ("S" " ") (" " "A") ("A" "R") ("R" "E") ("E" " ") (" " "F") ("F" "U") ("U" "N")))
    )

    (test-case "LOGARITHMS ARE NOT"
      (check-equal? (make_bigrams "LOGARITHMS ARE NOT") '(("L" "O") ("O" "G") ("G" "A") ("A" "R") ("R" "I") ("I" "T") ("T" "H") ("H" "M") ("M" "S") ("S" " ") (" " "A") ("R" "E") ("E" " ") (" " "N") ("N" "O") ("O" "T")))
    )

    (test-case "LoopBack"
      (check-equal? (make_bigrams "LoopBack") '(("L" "o") ("o" "o") ("o" "p") ("p" "B") ("B" "a") ("a" "c") ("c" "k")))
    )
  )
)

;;; Função de teste para verificação do coeficiente de Dice
(define dices-coefficient-test
  (test-suite "dices-coefficient-test"
    (test-case "John Smith - Smith, John D."
      (check-equal? (dices_coefficient "John Smith" "Smith, John D.") 0.7272727272727273)
    )

    (test-case "ALGORITHMS ARE FUN - LOGARITHMS ARE NOT"
      (check-equal? (dices_coefficient "ALGORITHMS ARE FUN" "LOGARITHMS ARE NOT") 0.6060606060606061)
    )

    (test-case "Lilo Stitch - Little String"
      (check-equal? (dices_coefficient "Lilo Stitch" "Little String") 0.36363636363636365)
    )
    
    (test-case "LoopBack - Loopback"
      (check-equal? (dices_coefficient "LoopBack" "LoopBack") 1.0)
    )
    
    (test-case "NOTHING AT ALL - EMPTY"
      (check-equal? (dices_coefficient "NOTHING AT ALL" "EMPTY") 0.0)
    )
  )
)