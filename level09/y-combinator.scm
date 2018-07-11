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

(print "-----length0-----")
(print
  (
    ((lambda (length)
      (lambda (l)
        (cond
          ((null? l) 0)
          (else (add1 (length (cdr l)))))))
      eternity)
    '()
  )
)

(print "-----length1-----")
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
      eternity))
    '(a)
  )
)

(print "-----length2-----")
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
    '(a b)
  )
)

(print "-----length0-----")
(print
  (
    ((lambda (mk-length)
      (mk-length eternity))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
    '()
  )
)

(print "-----length1-----")
(print
  (
    ((lambda (mk-length)
      (mk-length
        (mk-length eternity)))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
    '(a)
  )
)

(print "-----length2-----")
(print
  (
    ((lambda (mk-length)
      (mk-length
        (mk-length
          (mk-length eternity))))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
    '(a b)
  )
)

(print "-----length3-----")
(print
  (
    ((lambda (mk-length)
      (mk-length
        (mk-length
          (mk-length
            (mk-length eternity)))))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
    '(a b a)
  )
)

(print "-----length0-----")
(print
  (
    ((lambda (mk-length)
      (mk-length mk-length))
      (lambda (mk-length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (mk-length (cdr l))))))))
    '()
  )
)


(print "-----length1-----")
(print
  (
    ((lambda (mk-length)
      (mk-length mk-length))
      (lambda (mk-length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1
              ((mk-length eternity) (cdr l))))))))
    '(s)
  )
)


(print "-----length-----")
(print
  (
    ((lambda (mk-length)
      (mk-length mk-length))
      (lambda (mk-length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1
              ((mk-length mk-length) (cdr l))))))))
    '(s a a)
  )
)

(print "-----length-----")
(print
  (
    ((lambda (mk-length)
      (mk-length mk-length))
      (lambda (mk-length)
        ((lambda (length)
          (lambda (l)
            (cond
              ((null? l) 0)
              (else (add1
                (length (cdr l)))))))
        (lambda (x)
          ((mk-length mk-length) x)))))
    '(s a a)
  )
)


(print "-----length-----")
(print
  (
    ((lambda (mk-length)
      (mk-length mk-length))
      (lambda (mk-length)
        ((lambda (length)
          (lambda (l)
            (cond
              ((null? l) 0)
              (else (add1
                (length (cdr l)))))))
        (lambda (x)
          ((mk-length mk-length) x)))))
    '(s a a)
  )
)


(print "-----length-----")
(print
  (
    ((lambda (le)
      ((lambda (mk-length)
        (mk-length mk-length))
        (lambda (mk-length)
          (le
            (lambda (x)
              ((mk-length mk-length) x))))))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
      '(s a a a)
  )
)
