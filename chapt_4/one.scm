(load "eqan.scm")

(define one?
  (lambda (n)
    (cond
     ((eqan 1 n) #t)
     (else #f)
     )
    )
  )

(define (main args)
  (print (eq? #t (one? 1)))
  (print (eq? #f (one? 'a)))
  (print (eq? #f (one? 2)))
  ;(print (equal? 2 (occur 'hotdog '(mustard hotdog ketchup hotdog))))
  )
