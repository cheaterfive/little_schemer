; Build a list from lat with new after old
(define subst
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     (else
      (cond
       ((eq? (car lat) old)
	(cons new (cdr lat)))
       (else (cons (car lat)
		   (subst new
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
  (define result '(ice cream with topping for dessert))
  (print (subst new old input_lat))
  (print (equal? result  (subst new old input_lat)))
)
