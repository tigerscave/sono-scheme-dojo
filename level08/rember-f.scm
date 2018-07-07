(define rember-f
  (lambda (test?)
    (lambda (a lat)
      (cond
        ((null? lat) '())
        ((test? (car lat) a)
          (cdr lat))
        (else
          (cons (car lat)
            ((rember-f test?) a (cdr lat))))))))

(define rember-eq?
  (rember-f test?))

;(define rember
  ;(rember-f eq?))

(print ((rember-f eq?) 'a '(b a c a)))

(print ((rember-eq? eq?) 'a '(b a c a)))
