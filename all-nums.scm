(load "length.scm")
(load "sub1")

(define all-nums
  (lambda (lat)
    (cond
     ((null? lat) '())
     ((number? (car lat)) (cons (car lat) (all-nums (cdr lat))))
     (else (all-nums (cdr lat)))
     )
    )
  )

(define (main args)
  (print (equal? '(6 3) (all-nums '(6 3 hotdog))))
  (print (equal? '(6 3) (all-nums '(6 top 3 hotdog))))
  (print (equal? '(6) (all-nums '(6))))
  (print (equal? '() (all-nums '())))
  )
