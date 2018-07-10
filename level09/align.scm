(define atom?
  (lambda (x)
    (and (not (null? x)) (not (pair? x)))))

(print (atom? 'a))
(print (atom? '(a)))

(define a-pair?
  (lambda (x)
    (cond
      ((atom? x) #f)
      ((null? x) #f)
      ((null? (cdr x)) #f)
      ((null? (cdr (cdr x))) #t)
      (else #f))))


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

(print "-----align-----")
(print (align 'a))
(print (align '((a b) (c d))))
(print (align '((a b) (c d d))))

(define length*
  (lambda (para)
    (cond
      ((atom? para) 1)
      (else
        (+ (length* (first para))
            (length* (second para)))))))

(print "-----length*-----")
(print (length* '((a b) c)))

(define weight*
  (lambda (para)
    (cond
      ((atom? para) 1)
      (else
        (+ (* (weight* (first para)) 2)
            (weight* (second para)))))))

(print (weight* '((a b) c)))


(define revpair
  (lambda (para)
    (build (second para) (first para))))

(print (revpair '((a b) (c d))))

(define a-pair?
  (lambda (x)
    (cond
      ((atom? x) #f)
      ((null? x) #f)
      ((null? (cdr x)) #f)
      ((null? (cdr (cdr x))) #t)
      (else #f))))

(define shuffle
  (lambda (para)
    (cond
      ((atom? para) para)
      ((a-pair? (first para))
        (shuffle (revpair para)))
      (else
        (build (first para)
                  (shuffle (second para)))))))

(print (shuffle '((a b) (c d))))
