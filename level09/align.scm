(define atom?
  (lambda (x)
    (and (not (null? x)) (not (pair? x)))))

(print (atom? 'a))
(print (atom? '(a)))


(define first
  (lambda (p)
    (cond
      (else (car p)))))

(define second
  (lambda (p)
    (cond
      (else (car (cdr p))))))

(define build
  (lambda (a1 a2)
    (cond
      (else
        (cons a1
          (cons a2 '()))))))

(define shift
  (lambda (pair)
    (build (first (first pair))
      (build (second (first pair))
        (second pair)))))

(define align
  (lambda (para)
    (cond
      ((atom? para) para)
      ((a-pair? (first para))
        (align (shift para)))
      (else
        (build (first para)
          (align (second para)))))))
