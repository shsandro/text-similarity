#lang racket

(provide dices_coefficient make_bigrams)

(require (only-in "../util/length.rkt" list-length))

(define bigrams (lambda (l1 l2) (map list l1 l2)))

(define (string_to_list string_a)
    (map string (string->list string_a))
)

(define (make_bigrams text)
    (define list1 (string_to_list text))
    (define list2 (rest (string_to_list (string-append text " "))))
    (define bigrams_set (remove-duplicates (bigrams list1 list2)))
    (remove (last bigrams_set) bigrams_set)
    
)

(define (dices_coefficient text1 text2)
    (define set1 (make_bigrams (string-downcase text1)))
    (define set2 (make_bigrams (string-downcase text2)))
    (exact->inexact (/ (* 2 (list-length (set-intersect set1 set2))) (+ (list-length set1) (list-length set2))))
)