(load "minus.scm")
(load "add1.scm")
(load "lt.scm")


(define quotient
  (lambda (n m)
    (cond
     ((lt n m) 0)
     (else (add1 (quotient (minus n m) m)))
     )
    )
  )

(define (main args)
  (print (eq? 2 (quotient 6 3)))
  (print (eq? 1 (quotient 5 3)))
  (print (eq? 2 (quotient 7 3)))
  )
	   
