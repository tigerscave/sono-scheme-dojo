(define sub1
  (lambda (x)
    (- x 1)))

(define add1
  (lambda (x)
    (+ x 1)))

(define acckermann
  (lambda (n m)
    (cond
      ((zero? n) (add1 m))
      ((zero? m) (acckermann (sub1 n) 1))
      (else
        (acckermann (sub1 n)
          (acckermann n (sub1 m)))))))

(print (acckermann 1 1))
(print (acckermann 4 3))
