(define eternity
  (lambda (x)
    (eternity x)))

(define add1
  (lambda (x)
    (+ x 1)))

(print "-----length0------")
(print
  (((lambda (length)
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (add1 (length (cdr l)))))))
    eternity) '())
)

(print "-----length1------")
(print
  (((lambda (length)
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (add1 (length (cdr l)))))))
    ((lambda (length)
      (lambda (l)
        (cond
          ((null? l) 0)
          (else (add1 (length (cdr l)))))))
    eternity)) '(a))
)

(print "-----length2------")
(print
(
  ((lambda (length)
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (add1 (length (cdr l)))))))
    ((lambda (length)
      (lambda (l)
        (cond
          ((null? l) 0)
          (else (add1 (length (cdr l)))))))
    ((lambda (length)
      (lambda (l)
        (cond
          ((null? l) 0)
          (else (add1 (length (cdr l)))))))
      eternity)))
  '(a b))
)

(print "-----length100------")
(print
  (
    ((lambda (le)
      ((lambda (mk-length)
        (mk-length mk-length))
      (lambda (mk-length)
        (le (lambda (x)
              ((mk-length mk-length) x))))))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
  '(a b c d e f g f i o kokoko ooooo))
)

(print le)
