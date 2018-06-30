(define calculate
  (lambda (cal)
    (lambda (n1 n2)
      (cal n1 n2))))

(define calculate2
  (lambda (cal)
    (lambda (n1)
      (lambda (n2)
       ((calculate cal) n1 n2)))))

(define sub1
  (lambda (x)
    (- x 1)))

(define pow
  (lambda (n1 n2)
    (cond
      ((zero? n2) 1)
      (else
        (* n1 (pow n1 (sub1 n2)))))))

(print  (((calculate2 pow) 4) 5))
