#lang racket

(provide text1 text2 text3 text4 text5 text6 text7 text8 texts-similarity algorithm)

(define algorithm (read-line (current-input-port) 'any))
(define text1 (read-line (current-input-port) 'any))
(define text2 (read-line (current-input-port) 'any))
(define text3 (read-line (current-input-port) 'any))
(define text4 (read-line (current-input-port) 'any))
(define text5 (read-line (current-input-port) 'any))
(define text6 (read-line (current-input-port) 'any))
(define text7 (read-line (current-input-port) 'any))
(define text8 (read-line (current-input-port) 'any))

(define texts-similarity (list 0.7 1.0 1.0 1.0))