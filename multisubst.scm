; Build a list from lat with new instead of each occurrence of old
(define multisubst
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     (else
      (cond
       ((eq? (car lat) old)
	(cons new (multisubst new
			  old
			  (cdr lat))))
       (else (cons (car lat)
		   (multisubst new
			  old
			  (cdr lat))))
       )
      )
     )
    )
  )


(define (main args)
  (define input_lat '(ice fudge with fudge for dessert))
  (define new 'topping)
  (define old 'fudge)
  (define result '(ice topping with topping for dessert))
  (print (multisubst new old input_lat))
  (print (equal? result  (multisubst new old input_lat)))

  (define input_lat2 '(ice for the dessert))
  (define result2 '(ice for the dessert))
  (print (multisubst new old input_lat2))
  (print (equal? result2  (multisubst new old input_lat2))))
