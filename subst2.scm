; Build a list from lat with new replacing old or old2
(define subst2
  (lambda (new old old2 lat)
    (cond
     ((null? lat) (quote ()))
     (else
      (cond
       ((or (eq? (car lat) old) (eq? (car lat) old2))
	(cons new (cdr lat)))
       (else (cons (car lat)
		   (subst2 new
			   old
			   old2
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
  (define old2 'cream)
  
  (define result '(ice topping with fudge for dessert))
  (print (subst2 new old old2 input_lat))
  (print (equal? result  (subst2 new old old2 input_lat)))

  (define input_lat2 '(ice pudding with fudge for dessert))
  (define result2 '(ice pudding with topping for dessert))
  (print (subst2 new old old2 input_lat2))
  
  (print (equal? result2  (subst2 new old old2 input_lat2)))
)
