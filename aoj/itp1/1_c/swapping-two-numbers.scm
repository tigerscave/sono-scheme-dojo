(define sub1
  (lambda (x)
    (- x 1)))

(define >
  (lambda (n m)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else (> (sub1 n) (sub1 m))))))

(define first
  (lambda (tup)
    (car tup)))

(define second
  (lambda (tup)
    (car (cdr tup))))

(define build
  (lambda (a1 a2)
    (cond
      (else (cons a1
              (cons a2 '()))))))

(define swapping
  (lambda (tup)
    (cond
      ((and (zero? (first tup)) (zero? (second tup))) '())
      ((> (first tup) (second tup))
        (build (second tup) (first tup)))
      (else
        (build (first tup) (second tup))))))

(print (> 1 3))
(print (swapping '(6 5)))
(print (swapping '(3 4)))
(print "------(swapping '(7 5))-------")
(print (swapping '(7 5)))
(print "------(swapping '(10 0))-------")
(print (swapping '(10 0)))
