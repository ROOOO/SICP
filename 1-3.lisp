(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (sum-of-squares-of-two-larger-of-three x y z)
  (if (> x y) 
    (if (> y z) 
      (sum-of-squares x y)
      (sum-of-squares x z))
    (if (< y z) 
      (sum-of-squares y z)
      (if (> x z) 
	(sum-of-squares x y)
	(sum-of-squares y z)))))

(sum-of-squares-of-two-larger-of-three 1 2 3)
(sum-of-squares-of-two-larger-of-three 1 3 2)
(sum-of-squares-of-two-larger-of-three 2 1 3)
(sum-of-squares-of-two-larger-of-three 2 3 1)
(sum-of-squares-of-two-larger-of-three 3 1 2)
(sum-of-squares-of-two-larger-of-three 3 2 1)
(sum-of-squares-of-two-larger-of-three 1 1 1)
(sum-of-squares-of-two-larger-of-three 3 2 2)
(sum-of-squares-of-two-larger-of-three 3 3 2)

