#lang racket

(require (only-in "modules/text-similarity/dices_coefficient.rkt" dices_coefficient make_bigrams))
(require (only-in "modules/text-similarity/lcs.rkt" lcs get_lcs))

(define a "John Smith")
(define b "Smith, John D.")

(define c "ALGORITHMS ARE FUN")
(define d "LOGARITHMS ARE NOT")

(define e "LoopBack")

(get_lcs (string->list (string-downcase "John Smith")) (string->list (string-downcase "Smith, John D.")))
(get_lcs (string->list (string-downcase "ALGORITHMS ARE FUN")) (string->list (string-downcase "LOGARITHMS ARE NOT")))
(get_lcs (string->list (string-downcase "Lilo Stitch")) (string->list (string-downcase "Little String")))
(get_lcs (string->list (string-downcase "LoopBack")) (string->list (string-downcase "LoopBack")))
(get_lcs (string->list (string-downcase "EFG HELLO")) (string->list (string-downcase "ABCD")))

(lcs "John Smith" "Smith, John D.")
(lcs "ALGORITHMS ARE FUN" "LOGARITHMS ARE NOT")
(lcs "Lilo Stitch" "Little String")
