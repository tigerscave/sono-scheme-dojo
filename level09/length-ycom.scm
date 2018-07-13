(define add1
  (lambda (x)
    (+ x 1)))

(define length
  (lambda (l)
    (cond
      ((null? l) 0)
      (else (add1 (length (cdr l)))))))

(print (length '(a b c (d))))

(define eternity
  (lambda (l)
    (eternity)))

(print "--------length0---------")
(print
  (
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (add1 (eternity (cdr l))))))
    '()
  )
)

(print "--------length1--------")
(print
  (
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (add1
                ((lambda (l)
                  (cond
                    ((null? l) 0)
                    (else (add1 (eternity (cdr l))))))
                (cdr l))))))
      '(koki)
  )
)

(print "--------length2--------")
(print
  (
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (add1
                ((lambda (l)
                  (cond
                    ((null? l) 0)
                    (else (add1
                            ((lambda (l)
                              (cond
                                ((null? l) 0)
                                (else (add1 (eternity (cdr l))))))
                            (cdr l))))))
                (cdr l))))))
    '(sa to)
  )
)


(print "-length0-")
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

(print "-length1-")
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

(print "-length2-")
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
    '(kin kin)
  )
)


(print "--------length0--------")
(print
  (
    ((lambda (fuckyou)
      (fuckyou eternity))
        (lambda (length)
          (lambda (l)
            (cond
              ((null? l) 0)
              (else (add1 (length (cdr l))))))))
    '()
  )
)


(print "--------length1--------")
(print
  (
    ((lambda (fuckyou)
      (fuckyou
        (fuckyou eternity)))
          (lambda (length)
            (lambda (l)
              (cond
                ((null? l) 0)
                (else (add1 (length (cdr l))))))))
    '(rah)
  )
)

(print "--------length2--------")
(print
  (
    ((lambda (fuckyou)
      (fuckyou
        (fuckyou
          (fuckyou eternity))))
          (lambda (length)
            (lambda (l)
              (cond
                ((null? l) 0)
                (else (add1 (length (cdr l))))))))
    '(koki koki)
  )
)


(print "---------length3--------")
(print
  (
    ((lambda (fuckyou)
      (fuckyou
        (fuckyou
          (fuckyou
            (fuckyou eternity)))))
            (lambda (length)
              (lambda (l)
                (cond
                  ((null? l) 0)
                  (else (add1 (length (cdr l))))))))
    '(ada sono rah)
  )
)


(print "-length0-")
(print
  (
    ((lambda (fuckyou)
      (fuckyou fuckyou))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
    '()
  )
)


(print "-length1-")
(print
  (
    ((lambda (fuckyou)
      (fuckyou fuckyou))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1
              ((length eternity) (cdr l))))))))
    '(koki)
  )
)


(print "-length-")
(print
  (
    ((lambda (fuckyou)
      (fuckyou fuckyou))
      (lambda (fuckyou)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1
              ((fuckyou fuckyou) (cdr l))))))))
    '(koki koki koki)
  )
)

(print "--------length--------")
(print
  (
    ((lambda (fuckyou)
      (fuckyou fuckyou))
      (lambda (fuckyou)
        ((lambda (length)
          (lambda (l)
            (cond
              ((null? l) 0)
              (else (add1
                (length (cdr l)))))))
          (lambda (x)
            ((fuckyou fuckyou) x)))))
    '(jiji jiji iji jiji)
  )
)

(print "-length-")
(print
  (
    ((lambda (fuck)
      ((lambda (fuckyou)
        (fuckyou fuckyou))
        (lambda (fuckyou)
          (fuck
            (lambda (x)
              ((fuckyou fuckyou) x))))))
      (lambda (length)
        (lambda (l)
          (cond
            ((null? l) 0)
            (else (add1 (length (cdr l))))))))
      '(i a a a a a w w o)
  )
)
