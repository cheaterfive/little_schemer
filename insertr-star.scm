(load "../chapt_1_to_3/atom.scm")

; Build a list from lat with new after old working on nested lists
(define insertr*
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     ((atom? (car lat))
      (cond
       ((eq? (car lat) old)
	(cons old
	      (cons new
		    (insertr* new old (cdr lat)))))
       (else (cons (car lat) (insertr* new old (cdr lat))))
       ))
     (else (cons (insertr* new old (car lat))
		   (insertr* new
			    old
			    (cdr lat))))
     )
    )
  )
      


(define (main args)
  (define input_lat '(ice cream with fudge for dessert))
  (define new 'topping)
  (define old 'fudge)
  (define result '(ice cream with fudge topping for dessert))
  ;(print (insertr* new old '()))
  ;(print (insertr* new old input_lat))
  (print (equal? result  (insertr* new old input_lat)))
  ;(print (insertr* new old '((ice fudge (cream)) ((fudge topping)) with (lots of (fudge)))))
  (define result2 '((ice fudge topping (cream)) ((fudge topping topping)) with (lots of (fudge topping))))
  (print (equal? result2  (insertr* new old '((ice fudge (cream)) ((fudge topping)) with (lots of (fudge))))))
  
)
