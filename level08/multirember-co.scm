(define multirember&co
  (lambda (a lat col)
    (cond
      ((null? lat)
        (col '() '()))
      ((eq? (car lat) a)
        (multirember&co a (cdr lat)
          (lambda (newlat seen)
            (col newlat (cons (car lat) seen)))))
      (else
        (multirember&co a (cdr lat)
          (lambda (newlat seen)
            (col (cons (car lat) newlat) seen)))))))

(define a-friend
  (lambda (x y)
    (null? y)))

(define add1
  (lambda (x)
    (+ x 1)))

(define length
  (lambda (y)
    (cond
      ((null? y) 0)
      (else
        (add1 (length (cdr y)))))))

(define counter
  (lambda (x y)
    (length y)))

(print (multirember&co 'tuna '() a-friend))
(print (multirember&co 'tuna '(strawberries) a-friend))
(print (multirember&co 'tuna '(strawberries tuna) counter))
(print (multirember&co 'tuna '(tuna strawberries tuna) counter))
