(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define lat?
  (lambda (l)
    (cond
     ((null? l) #t)
     ((atom? (car l)) (lat? (cdr l)))
     (else #f))))

(define rember
  (lambda (a lat)
    (cond
     ((null? lat) '())
     ((eq? a (car lat)) (cdr lat))
     (else (cond

	    (else (cons (car lat) (rember a (cdr lat))))
	    )))))
     
    
(define (main args)
  ;(print (+ 3 7))
  ;(print (lat? '(bob and joe)))
  ;(print '())
  ;(print (rember 'chops '(lamb chops and mint jelly)))
  (print (equal? '(lamb chops and jelly)  (rember 'mint '(lamb chops and mint jelly))))
  (print (equal? '(lettuce and tomato)  (rember 'bacon '(bacon lettuce and tomato))))
  (print (equal? '(bacon lettuce and tomato)  (rember 'toast '(bacon lettuce and tomato))))
  (print (equal? '(coffee tea cup)  (rember 'cup '(coffee cup tea cup))))
  )
