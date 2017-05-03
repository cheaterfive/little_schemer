(load "add1.scm")
(load "sub1.scm")

(define plus
  (lambda (x y)
    (cond
     ((zero? y) x)
     (else (plus (add1 x) (sub1 y))))))

(define (main args)
  (print (eq? 9 (plus 4 5)))
  (print (eq? 4 (plus 0 4)))
  (print (eq? 5 (plus 5 0)))
  
  )
	   
