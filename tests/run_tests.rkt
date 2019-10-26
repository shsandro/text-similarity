#lang racket

(require rackunit)
(require rackunit/text-ui)
(require "./dices_coefficient_tests.rkt")
(require "./lcs_tests.rkt")

(display "Testes Dice's Coefficient:\n")
(run-tests make-bigrams-test)
(run-tests dices-coefficient-test)

(display "\nTestes LCS:\n")
(run-tests get-lcs-test)
(run-tests lcs-test)