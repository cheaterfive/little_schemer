(load "/Users/Richard/Documents/Programming/chicken/code/little_schemer/chapt_1_to_3/atom.scm")

					;
;;Build a list from lat with new after old
(define subst*
  (lambda (new old lat)
    (cond
     ((null? lat) (quote ()))
     ((atom? (car lat))
      (cond
       ((eq? (car lat) old) (cons new (subst* new old (cdr lat))))
       (else (cons (car lat) (subst* new old (cdr lat))))))
     (else (cons (subst* new old (car lat)) (subst* new old (cdr lat))))
     )
    )
  )
      


(define (main args)
  (define input_lat '(ice cream with fudge for dessert))
  (define new 'topping)
  (define old 'fudge)
  (define result '(ice cream with topping for dessert))
  ;;(print (subst* new old input_lat))
  (print (equal? result  (subst* new old input_lat)))
  (print (equal? '((topping) (topping ((topping))) (with desert of topping))  (subst* new old '((fudge) (fudge ((fudge))) (with desert of fudge)))))
)
