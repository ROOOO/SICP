(load "sqrt.lisp")
(define (good-enough? new-guess old-guess)
  (> 0.01
     (/ (abs (- new-guess old-guess))
	old-guess)))
(define (sqrt-iter guess x)
  (if (good-enough? (improve guess x) guess)
    (improve guess x)
    (sqrt-iter (improve guess x)
	       x)))
(sqrt 2)
(sqrt 0.00009)
(sqrt 9000000000000000000000000000000000000000000000000000000000000000000000000000)

