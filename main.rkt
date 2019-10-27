#lang racket

(require (only-in "modules/text-similarity/dices_coefficient.rkt" dices_coefficient make_bigrams))
(require (only-in "modules/text-similarity/lcs.rkt" lcs get_lcs))
(require (only-in "modules/util/correlation.rkt" correlation-xy))
(require "texts/texts.rkt")

(define (lcs-data)
    (list
        (lcs text1 text2)
        (lcs text3 text4)
        (lcs text5 text6)
        (lcs text7 text8)
    )
)

(define (dices_coefficient-data)
    (list
        (dices_coefficient text1 text2)
        (dices_coefficient text3 text4)
        (dices_coefficient text5 text6)
        (dices_coefficient text7 text8)
    )
)

(define (make-correlation)
    (if (equal? correlation? "1")
        (if (equal? algorithm "0")
            (correlation-xy texts-similarity (dices_coefficient-data))
            (correlation-xy texts-similarity (lcs-data))
        )
        (if (equal? algorithm "0")
            (dices_coefficient-data)
            (lcs-data)
        )
    )
)

(make-correlation)