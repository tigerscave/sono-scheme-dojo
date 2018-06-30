(define plus
  (lambda (n1 n2)
    (+ n1 n2)))

(define plus_curried
  (lambda (n1)
    (lambda (n2)
      (plus n1 n2))))

(print "------plus--------")
(print (plus 2 5))
(print "------plus_curried--------")
(print ((plus_curried 2) 5))
