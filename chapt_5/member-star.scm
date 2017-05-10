(load "/Users/Richard/Documents/Programming/chicken/code/little_schemer/chapt_1_to_3/atom.scm")

					;
;; Is a a member of a nested list
(define member*
  (lambda (a lat)
    (cond
     ((null? lat) #f)
     ((atom? (car lat))
      (or (eq? (car lat) a) (member* a (cdr lat))))
     (else (or (member* a (car lat)) (member* a (cdr lat))))
     )
    )
  )
      
      


(define (main args)
  (define input_lat '(ice cream with fudge for dessert))
  (define new 'topping)
  (define old 'fudge)
  (define result '(ice cream with topping for dessert))
  ;;(print (member* new old input_lat))
  
  (print (equal? #t  (member* 'cream input_lat)))
  (print (equal? #f  (member* 'blueberries input_lat)))
  (print (equal? #t  (member* 'with '((fudge) (fudge ((fudge))) (with desert of fudge)))))
)
