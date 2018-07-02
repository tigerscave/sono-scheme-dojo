(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else
        (or (eq? (car lat) a)
          (member? a (cdr lat)))))))

(define member?-f
  (lambda (test?)
    (lambda (a lat)
      (cond
        ((null? lat) #f)
        (else
          (or (test? (car lat) a)
            ((member?-f test?) a (cdr lat))
              ))))))

(print (member? 'a '(a b c)))
(print (member? 'a '(b c)))

(print ((member?-f eq?) 'a '(a b c)))
(print ((member?-f eq?) 'a '(b c)))
