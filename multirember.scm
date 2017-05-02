(define multirember
  (lambda (a lat)
    (cond
     ((null? lat) '())
     ((eq? a (car lat)) (multirember a (cdr lat)))
     (else (cons (car lat) (multirember a (cdr lat)))))))
     
    
(define (main args)
  (print (equal? '(lamb chops and jelly)  (multirember 'mint '(lamb chops and mint jelly))))
  (print (equal? '(lettuce and tomato)  (multirember 'bacon '(bacon lettuce and tomato))))
  (print (equal? '(bacon lettuce and tomato)  (multirember 'toast '(bacon lettuce and tomato))))
  (print (equal? '(coffee tea)  (multirember 'cup '(coffee cup tea cup))))
  )
