#lang racket

(provide dices_coeficient)

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

(define (dices_coeficient text1 text2)
    (define set1 (make_bigrams text1))
    (define set2 (make_bigrams text2))
    (/ (* 2 (length (set-intersect set1 set2))) (+ (length set1) (length set2)))
)