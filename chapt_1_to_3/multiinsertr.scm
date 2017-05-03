; Build a list from lat with new after each occurrence of old
(define multiinsertr
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     (else
      (cond
       ((eq? (car lat) old)
	(cons old
	      (cons new
		    (multiinsertr new
			    old
			    (cdr lat)))))
       (else (cons (car lat)
		   (multiinsertr new
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
  (print (multiinsertr new old input_lat))
  (print (equal? result  (multiinsertr new old input_lat)))

  (define input_lat2 '(fudge ice cream with fudge for dessert))
  (define result2 '(fudge topping ice cream with fudge topping for dessert))
  (print (multiinsertr new old input_lat2))
  (print (equal? result2  (multiinsertr new old input_lat2)))
)
