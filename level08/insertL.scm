(define insertL
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((eq? (car l) old)
        (cons new
          (cons old (cdr l))))
      (else
        (cons (car l)
          (insertL new old (cdr l)))))))


(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      ((eq? a (car lat))
        (multirember a (cdr lat)))
      (else
        (cons (car lat)
          (multirember a (cdr lat)))))))

(define multirember-f
  (lambda (test?)
    (lambda (a lat)
      (cond
        ((null? lat) '())
        ((test? (car lat) a)
          ((multirember-f test?) a (cdr lat)))
        (else
          (cons (car lat)
            ((multirember-f test?) a (cdr lat))))))))

(print ((multirember-f eq?) 'a '(a b c a)))

(define atom?
  (lambda (x)
    (and
      (not (pair? x))
      (not (null? x)))))

(print (atom? '(a)))
(print (atom? 'a))
(print (atom? 'abc))

(define rember*
  (lambda (a l)
    (cond
      ((null? l) '())
      ((atom? (car l))
        (cond
          ((eq? (car l) a) (rember* a (cdr l)))
          (else
            (cons (car l)
              (rember* a (cdr l))))))
      (else
        (cons (rember* a (car l))
              (rember* a (cdr l)))))))

;(print (multirember 'a '(b c l a i a a)))
(print "----------rember*------------")
(print (rember* 'a '((b a) c a (i a))))
