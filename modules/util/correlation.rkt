#lang racket

;;; Este algoritmo provê o coeficiente de correlação linear de Pearson
;;; As amostras devem possuir o mesmo tamanho

(provide correlation-xy)

(define (sum-xy x y)
    (if (or (null? x) (null? y))
        0
        (+ (* (first x) (first y)) (sum-xy (rest x) (rest y)))
    )
)

(define (sum-x x)
    (if (null? x)
        0
        (+ (first x) (sum-x (rest x)))
    )
)

(define (sum-x2 x)
    (if (null? x)
        0
        (+ (* (first x) (first x)) (sum-x2 (rest x)))
    )
)

(define (Sxy x y)
    (- (sum-xy x y) (/ (* (sum-x x) (sum-x y)) (length x)))
)

(define (Sxx x)
    (- (sum-x2 x) (/ (* (sum-x x) (sum-x x)) (length x)))
)

(define (correlation-xy x y)
    (/ (Sxy x y) (sqrt (* (Sxx x) (Sxx y))))
)