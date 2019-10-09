(load "sqrt.lisp")
(sqrt 100)
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))
;Aborting!: maximum recursion depth exceeded
(sqrt 100)

