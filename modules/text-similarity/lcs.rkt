#lang racket

(provide lcs get_lcs)

(require (only-in "../util/max.rkt" max))
(require memoize)

;;; (String, String) -> Integer
;;; Esta função deve receber dois textos e devolver a maior subsequencia comum entre eles
(define/memo (get_lcs text1 text2)
    (if (or (null? text1) (null? text2))
        0
        (if (equal? (first text1) (first text2))
            (add1 (get_lcs (rest text1) (rest text2)))
            (max (get_lcs (rest text1) text2) (get_lcs text1 (rest text2)))
        )
    )
)

;;; (String, String) -> Number
;;; Esta função deve receber dois textos e devolver a normalização da maior subsequencia comum entre eles
(define (lcs text1 text2)
    (define lcs_length (get_lcs (string->list (string-downcase text1)) (string->list (string-downcase text2))))
    (+ (* (/ lcs_length (string-length text1)) 0.5) (* (/ lcs_length (string-length text2)) 0.5))
)