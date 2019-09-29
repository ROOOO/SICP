(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
(test 0 (p))

;; normal-order
; => (test (= 0 0) 0 (p))
; => 0

;; applicative-order
; => (test 0 (p)) 
; => (test 0 (p))
; => ... endless interpret (p)

