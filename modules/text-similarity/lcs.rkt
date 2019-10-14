#lang racket

(require (only-in "../util/max.rkt" max))
(require memoize)

(define/memo (get_lcs text1 text2)
    (if (or (null? text1) (null? text2))
        0
        (if (equal? (first text1) (first text2))
            (add1 (get_lcs (rest text1) (rest text2)))
            (max (get_lcs (rest text1) text2) (get_lcs text1 (rest text2)))
        )
    )
)

(define (lcs text1 text2)
    (get_lcs (string->list (string-downcase text1)) (string->list (string-downcase text2)))
)

(define a "OLA TESTE LONGEST COMMON SUBSEQUENCE FIRST ARGUMENT")
(define b "OLA TESTE LONGEST COMMON SUBSEQUENCE SECOND ARGUMENT")

(time (lcs a b))