(load "plus.scm")


(define tup+
  (lambda (tup1 tup2)
    (cond
     ((null? tup1) tup2)
     ((null? tup2) tup1)
     (else (cons (plus (car tup1) (car tup2)) (tup+ (cdr tup1) (cdr tup2))))
     )
    )
  )

(define (main args)
  (print (equal? '(9) (tup+ '(4) '(5))))
  (print (equal? '(4 4) (tup+ '(0 4) '(4 0))))
  (print (equal? '(4 4) (tup+ '(2 3) '(2 1))))
  (print (equal? '(4 4 7) (tup+ '(2 3 7) '(2 1))))
  (print (equal? '() (tup+ '() '())))  
  )
	   
