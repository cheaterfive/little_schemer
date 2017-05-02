; Build a list from lat with new before each occurrence old
(define multiinsertl
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     (else
      (cond
       ((eq? (car lat) old)
	(cons new
	      (cons old
	            (multiinsertl new
		                  old
			          (cdr lat)))))
       (else (cons (car lat)
		   (multiinsertl new
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
  (print (multiinsertl new old input_lat))
  (print (equal? result  (multiinsertl new old input_lat)))

  (define input_lat2 '(fudge ice cream with fudge for dessert))
  (define result2 '(topping fudge ice cream with topping fudge for dessert))
  (print (multiinsertl new old input_lat2))
  (print (equal? result2  (multiinsertl new old input_lat2)))
)
