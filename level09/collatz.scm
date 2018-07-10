(define add1
  (lambda (x)
    (+ x 1)))

(define one?
  (lambda (x)
    (= x 1)))

(define collatz
  (lambda (x)
    (cond
      ((one? x) 1)
      (else
        (cond
          ((even? x) (collatz (/ x 2)))
          (else (collatz (add1 (* 3 x)))))))))

(print (collatz 5))
(print (collatz 9948903289208423840948320980938432))
(print (collatz 20202020))
