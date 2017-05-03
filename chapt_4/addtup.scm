(load "plus.scm")

(define addtup
  (lambda (tup)
    (cond
     ((null? tup) 0)
     (else (plus (car tup) (addtup (cdr tup)) ))
     )
    )
  )

(define (main args)
  (print (eq? 15 (addtup '(4 5 6))))
  (print (eq? 5 (addtup '(0 4 1))))
  (print (eq? 0 (addtup '(0 0 0))))
  (print (eq? 0 (addtup '())))
  
  )
	   
