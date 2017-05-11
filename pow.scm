(load "multiply.scm")
(load "sub1.scm")


(define pow
  (lambda (n m)
    (cond
     ((zero? m) 1)
     (else (multiply n (pow n (sub1 m))))
     )
    )
  )

(define (main args)
  (print (eq? 8 (pow 2 3)))
  (print (eq? 4 (pow 2 2)))
  (print (eq? 1 (pow 1 1)))
  (print (eq? 1 (pow 4 0)))
  )
	   
