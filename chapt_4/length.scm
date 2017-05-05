(load "minus.scm")
(load "add1.scm")
(load "lt.scm")


(define length
  (lambda (lat)
    (cond
     ((null? lat) 0)
     (else (add1 (length (cdr lat))))
     )
    )
  )

(define (main args)
  (print (eq? 2 (length '(6 3))))
  (print (eq? 0 (length '())))
  (print (eq? 1 (length '(3))))
  )
	   
