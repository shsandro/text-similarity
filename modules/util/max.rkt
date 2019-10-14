#lang racket

(provide max)

(define (max a b)
    (if (> a b)
        a
        b
    )
)