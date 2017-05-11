; Build a list from lat with new before old
(define insertl
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     (else
      (cond
       ((eq? (car lat) old)
	(cons new lat))
       (else (cons (car lat)
		   (insertl new
			    old
			    (cdr lat))))
       )
      )
     )
    )
  )


(define (main args)
  (define input_lat '(ice cream with fudge for dessert))
  (define new 'topping)
  (define old 'fudge)
  (define result '(ice cream with topping fudge for dessert))
  (print (insertl new old input_lat))
  (print (equal? result  (insertl new old input_lat)))
)
