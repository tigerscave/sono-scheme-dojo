(define rectangle
  (lambda (tup)
    (cond
      ((null? tup) '())
      (else
        (cons (* (car tup) (car (cdr tup)))
          (cons (* (+ (car tup) (car (cdr tup))) 2) '())
            )))))

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

(define rectangle2
  (lambda (tup)
    (cons (* (first tup) (second tup))
      (cons (* 2 (+ (first tup) (second tup))) '())
        )))

(define rectangle3
  (lambda (tup)
    (build
      (* (first tup) (second tup))
      (* 2 (+ (first tup) (second tup))))))

(print (first '(3 5)))
(print (second '(3 5)))
(print "------(rectangle '(3 5))-------")
(print (rectangle '(3 5)))
(print "------(rectangle2 '(10 20))-------")
(print (rectangle2 '(10 20)))
(print "------(rectangle3 '(10 20))-------")
(print (rectangle3 '(10 20)))
