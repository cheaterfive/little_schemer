(load "add1.scm")
(load "sub1.scm")

(define minus
  (lambda (x y)
    (cond
     ((zero? y) x)
     (else (sub1 (minus x (sub1 y))))
     )
    )
  )

(define (main args)
  (print (eq? 2 (minus 4 2)))
  (print (eq? 4 (minus 4 0)))
  )
