(define multiinsertL
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old)
        (cons new
          (cons old
            (multiinsertL new old (cdr lat)))))
      (else
        (cons (car lat)
          (multiinsertL new old (cdr lat)))))))

(print (multiinsertL 'a 'b '(i k b e b o)))
