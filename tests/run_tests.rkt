#lang racket

(require rackunit)
(require rackunit/text-ui)
(require "./dices_coefficient_tests.rkt")
(require "./lcs_tests.rkt")

;;; Execução dos testes relativos ao coeficiente de Dice
;;; Deveria chamar e executar as funções de teste do coeficiente de Dice
(display "Testes Dice's Coefficient:\n")
(run-tests make-bigrams-test)
(run-tests dices-coefficient-test)

;;; Execução dos testes relativos ao LCS
;;; Deveria chamar e executar as funções de teste do LCS
(display "\nTestes LCS:\n")
(run-tests get-lcs-test)
(run-tests lcs-test)