(load "lt.scm")
(load "gt.scm")


(define =
  (lambda (n m)
    (cond
     ((gt n m) #f)
     ((lt n m) #f)
     (else #t)
     )
    )
  )

(define (main args)
  (print (eq? #f (= 4 5)))
  (print (eq? #t (= 0 0)))
  (print (eq? #f (= 4 3)))
  (print (eq? #t (= 4 4)))
  )
	   
