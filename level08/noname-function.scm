(print
  ((lambda (name)
    (cons 'hello
      (cons name '(welcome to cp.8))))
        'rahmat)
)


(define hoge
  (lambda (name)
    (cons 'hello
      (cons name '(welcome to cp.8)))))

(print (hoge 'rahmat))
