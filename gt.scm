(load "plus.scm")


(define gt
  (lambda (n m)
    (cond
     ((zero? n) #f)
     ((zero? m) #t)
     (else (gt (sub1 n) (sub1 m)))
     )
    )
  )

(define (main args)
  (print (eq? #f (gt 4 5)))
  (print (eq? #f (gt 0 0)))
  (print (eq? #t (gt 4 3)))
  (print (eq? #f (gt 4 4)))
  )
	   
