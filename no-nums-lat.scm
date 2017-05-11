(load "length.scm")
(load "sub1")

(define no-nums
  (lambda (lat)
    (cond
     ((null? lat) '())
     ((number? (car lat)) (no-nums (cdr lat)))
     (else (cons (car lat) (no-nums (cdr lat))))
     )
    )
  )

(define (main args)
  (print (no-nums '(6 3 hotdog)))
  (print (equal? '(hotdog) (no-nums '(6 3 hotdog))))
  (print (equal? '(top hotdog) (no-nums '(6 top 3 hotdog))))
  (print (equal? '() (no-nums '(6))))
  )
