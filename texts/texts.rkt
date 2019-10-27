#lang racket

(provide text1 text2 text3 text4 text5 text6 text7 text8 texts-similarity algorithm correlation?)

(define correlation? (read-line (current-input-port) 'any))
(define algorithm (read-line (current-input-port) 'any))
(define text1 (read-line (current-input-port) 'any))
(define text2 (read-line (current-input-port) 'any))
(define text3 (read-line (current-input-port) 'any))
(define text4 (read-line (current-input-port) 'any))
(define text5 (read-line (current-input-port) 'any))
(define text6 (read-line (current-input-port) 'any))
(define text7 (read-line (current-input-port) 'any))
(define text8 (read-line (current-input-port) 'any))

(define texts-similarity (list 0.0 0.5 0.33 1.0))