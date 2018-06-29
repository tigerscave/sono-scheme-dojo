(define calculate
  (lambda (cal)
    (lambda (n1 n2)
      (cal n1 n2))))

(define calculate2
  (lambda (cal)
    (lambda (n1)
      (lambda (n2)
       (calculate cal n1 n2)))))

(print (((calculate2 +) 4) 5))
