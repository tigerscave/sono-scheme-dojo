(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define plus
  (lambda (x y)
    (+ x y)))

(define evens-only-and-co
  (lambda (l col)
    (cond
      ((null? l)
        (col '() 1 0))
      ((atom? (car l))
        (cond
          ((even? (car l))
            (evens-only-and-co (cdr l)
              (lambda (newl p s)
                (col (cons (car l) newl)
                  (* (car l) p) s))))
          (else
            (evens-only-and-co (cdr l)
              (lambda (newl p s)
                (col newl p (plus (car l) s)))))))
      (else
        (evens-only-and-co (car l)
          (lambda (al ap as)
            (evens-only-and-co (cdr l)
              (lambda (newl2 p2 s2)
                (col (cons al newl2) (* ap p2) (+ as s2))))))))))

(define the-last-friend
  (lambda (newl product sum)
    (cons sum
      (cons product
        newl))))

(print (evens-only-and-co '((9 1 2 8) 3 10 ((9 9) 7 6) 2) the-last-friend))
