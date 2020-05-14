#lang racket

(provide dices_coefficient make_bigrams)

(require (only-in "../util/length.rkt" list-length))

;;; (String, String) -> List
;;; Esta função deveria receber dois textos e retornar uma lista com sos caracteres da mesma posição juntos 2 a 2
(define bigrams (lambda (l1 l2) (map list l1 l2)))

;;; (String) -> List
;;; Esta função recebe um string e retorna uma lista contendo todos seus caracteres
(define (string_to_list string_a)
    (map string (string->list string_a))
)

;;;  (String) -> List
;;; Esta função deveria receber um texto e retornar uma lista de bigrams relativos ao texto
(define (make_bigrams text)
    (define list1 (string_to_list text))
    (define list2 (rest (string_to_list (string-append text " "))))
    (define bigrams_set (remove-duplicates (bigrams list1 list2)))
    (remove (last bigrams_set) bigrams_set)
    
)

;;; (String, String) -> Number
;;; Esta função deveria receber dois textos e devolver o coeficiente de dice entre os textos
(define (dices_coefficient text1 text2)
    (define set1 (make_bigrams (string-downcase text1)))
    (define set2 (make_bigrams (string-downcase text2)))
    (exact->inexact (/ (* 2 (list-length (set-intersect set1 set2))) (+ (list-length set1) (list-length set2))))
)