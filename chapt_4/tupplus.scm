(load "plus.scm")


(define tup+
  (lambda (tup1 tup2)
    (cond
     ((and (null? tup1) (null? tup2)) (quote ()))
     (else (cons (plus (car tup1) (car tup2)) (tup+ (cdr tup1) (cdr tup2))))
     )
    )
  )

(define (main args)
  (print (equal? '(9) (tup+ '(4) '(5))))
  (print (equal? '(4 4) (tup+ '(0 4) '(4 0))))
  (print (equal? '(4 4) (tup+ '(2 3) '(2 1))))
  (print (equal? '() (tup+ '() '())))  
  )
	   
