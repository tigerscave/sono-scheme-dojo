(define sub1
  (lambda (x)
    (- x 1)))

(define pick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (car lat))
      (else (pick (sub1 n) (cdr lat))))))

(define keep-looking
  (lambda (a sorn lat)
    (cond
      ((number? sorn)
        (keep-looking a (pick sorn lat) lat))
      (else (eq? sorn a)))))

(define looking
  (lambda (a lat)
    (keep-looking a (pick 1 lat) lat)))

(print (looking 'cavior '(6 2 4 cavior 5 7 3)))
(print (looking 'cavior '(6 2 grits cavior 5 7 3)))
(print (keep-looking 'a 2 '(i k a)))
