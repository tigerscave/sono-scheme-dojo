(define add1
  (lambda (x)
    (+ x 1)))

(define length
  (lambda (l)
    (cond
      ((null? l) 0)
      (else
        (add1 (length (cdr l)))))))

(print (length '(a a a a b)))

(define eternity
  (lambda (x)
    (eternity x)))

(print "-----length0-----")
(print
  (
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (add1 (eternity (cdr l))))))
    '()
  )
)

(print "-----length1-----")
(print
  (
    (lambda (l)
      (cond
        ((null? l) 0)
        (else
          (add1
            ((lambda (l)
              (cond
                ((null? l) 0)
                (else (add1 (eternity (cdr l))))))
            (cdr l))))))
    '(a)
  )
)

(print "-----length2-----")
(print
  (
    (lambda (l)
      (cond
        ((null? l) 0)
        (else
          (add1
            ((lambda (l)
              (cond
                ((null? l) 0)
                (else
                  (add1
                    ((lambda (l)
                      (cond
                        ((null? l) 0)
                        (else (add1 (eternity (cdr l))))))
                  (cdr l))))))
            (cdr l))))))
    '(a b)
  )
)
