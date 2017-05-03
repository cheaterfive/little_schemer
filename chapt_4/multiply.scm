(load "plus.scm")
(load "sub1.scm")

(define multiply
  (lambda (x y)
    (cond
     ((zero? y) 0)
     (else (plus x (multiply x (sub1 y)))))))

(define (main args)
  (print (eq? 20 (multiply 4 5)))
  (print (eq? 0 (multiply 0 4)))
  (print (eq? 0 (multiply 5 0)))
  
  )
	   
