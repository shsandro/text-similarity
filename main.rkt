#lang racket

(require (only-in "modules/text-similarity/dices_coeficient.rkt" dices_coeficient))

(define a "John Smith")
(define b "Smith, John D.")

(define c "ALGORITHMS ARE FUN")
(define d "LOGARITHMS ARE NOT")

(dices_coeficient a b)
(dices_coeficient c d)