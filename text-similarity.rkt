#lang racket

(require (only-in "dices_coeficient.rkt" dices_coeficient))

(define a "John Smith")
(define b "Smith, John D.")

(dices_coeficient a b)