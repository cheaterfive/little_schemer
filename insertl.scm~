; Build a list from lat with new after old
(define insertr
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     (else
      (cond
       ((eq? (car lat) old)
	(cons old
	      (cons new (insertr new
				 old
				 (cdr lat)))))
       (else (cons (car lat)
		   (insertr new
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
  (define result '(ice cream with fudge topping for dessert))
  (print (insertr new old input_lat))
  (print (equal? result  (insertr new old input_lat)))
)
