#lang racket

(provide list-length)

(define (list-length a)
    (if (null? a)
        0
        (add1 (length (rest a)))
    )
)