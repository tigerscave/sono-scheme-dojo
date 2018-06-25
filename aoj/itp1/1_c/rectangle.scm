(define first
  (lambda (tup)
    (* (car tup) (car (cdr tup)))))

(define second
  (lambda (tup)
    (* (plus (car tup) (car (cdr tup))) 2)))

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

(define rectangle2
  (lambda (tup)
    (cons (* (first tup) (second tup))
      (cons (* 2 (+ (first tup) (second tup))) '())
        )))

(print (first '(3 5)))
(print (second '(3 5)))
(print "------(rectangle '(3 5))-------")
(print (rectangle '(3 5)))
(print "------(rectangle2 '(10 20))-------")
(print (rectangle2 '(10 20)))
