(load "eqan.scm")

(define occur
  (lambda (a lat)
    (cond
     ((null? lat) 0)
     (else
      (cond
       ((eqan a (car lat)) (add1 (occur a (cdr lat))))
       (else (occur a (cdr lat)))
       )
      )
     )
    )
  )

(define (main args)
  (print (equal? 2 (occur 'hotdog '(mustard hotdog ketchup hotdog))))
  )
