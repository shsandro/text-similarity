#lang racket

(provide get-lcs-test lcs-test)
(require (only-in "../modules/text-similarity/lcs.rkt" lcs get_lcs))

(require rackunit)
(require rackunit/text-ui)

(define get-lcs-test
  (test-suite
    "get-lcs-test"
    (test-case "John Smith - Smith, John D."
      (check-equal? (get_lcs (string->list (string-downcase "John Smith")) (string->list (string-downcase "Smith, John D.")))  5)    
    )

    (test-case "ALGORITHMS ARE FUN - LOGARITHMS ARE NOT"
      (check-equal? (get_lcs (string->list (string-downcase "ALGORITHMS ARE FUN")) (string->list (string-downcase "LOGARITHMS ARE NOT")))  14)    
    )

    (test-case "Lilo Stitch - Little String"
      (check-equal? (get_lcs (string->list (string-downcase "Lilo Stitch")) (string->list (string-downcase "Little String")))  7)    
    )

    (test-case "LoopBack - LoopBack"
      (check-equal? (get_lcs (string->list (string-downcase "LoopBack")) (string->list (string-downcase "LoopBack")))  8)    
    )

    (test-case "EFG HELLO - ABCD"
      (check-equal? (get_lcs (string->list (string-downcase "EFG HELLO")) (string->list (string-downcase "ABCD")))  0)    
    )
  )
)

(define lcs-test
  (test-suite
    "lcs-test"
    (test-case "John Smith - Smith, John D."
      (check-equal? (lcs "John Smith" "Smith, John D.")  0.4285714285714286)    
    )

    (test-case "ALGORITHMS ARE FUN - LOGARITHMS ARE NOT"
      (check-equal? (lcs "ALGORITHMS ARE FUN" "LOGARITHMS ARE NOT")  0.7777777777777778)
    )

    (test-case "Lilo Stitch - Little String"
      (check-equal? (lcs "Lilo Stitch" "Little String")  0.5874125874125874)
    )

    (test-case "LoopBack - LoopBack"
      (check-equal? (lcs "LoopBack" "LoopBack")  1.0)
    )

    (test-case "EFG HELLO - ABCD"
      (check-equal? (lcs "EFG HELLO" "ABCD")  0)
    )
  )
)