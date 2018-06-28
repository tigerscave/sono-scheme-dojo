(define sub1
  (lambda (x)
    (- x 1)))

(define pow
  (lambda (n1 n2)
    (cond
      ((zero? n2) 1)
      (else (* n1 (pow n1 (sub1 n2)))))))

(print (pow 2 6))

(define calculate
  (lambda (cal)
    (lambda (n1 n2)
      (cal n1 n2))))

(print ((calculate pow) 2 4))
