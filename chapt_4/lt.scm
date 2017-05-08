(load "plus.scm")


(define lt
  (lambda (n m)
    (cond
     ((zero? m) #f)
     ((zero? n) #t)
     (else (lt (sub1 n) (sub1 m)))
     )
    )
  )

(define (main args)
  (print (eq? #t (lt 4 5)))
  (print (eq? #f (lt 0 0)))
  (print (eq? #f (lt 4 3)))
  (print (eq? #f (lt 4 4)))
  )
	   
