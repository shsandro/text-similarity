#lang racket

(require (only-in "modules/text-similarity/dices_coefficient.rkt" dices_coefficient make_bigrams))
(require (only-in "modules/text-similarity/lcs.rkt" lcs))

(define a "John Smith")
(define b "Smith, John D.")

(define c "ALGORITHMS ARE FUN")
(define d "LOGARITHMS ARE NOT")

(define e "LoopBack")

(make_bigrams a)
(make_bigrams b)
(make_bigrams c)
(make_bigrams d)
(make_bigrams e)

(dices_coefficient a b)
(dices_coefficient c d)
(dices_coefficient "Lilo Stitch" "Little String")
(dices_coefficient "LoopBack" "LoopBack")
(dices_coefficient "NOTHING AT ALL" "EMPTY")

(lcs a b)
(lcs c d)