(load "eqan.scm")

;; Pre my_equal
;; (define eqlist?
;;   (lambda (l1 l2)
;;     (cond
;;      ((and (null? l1) (null? l2)) #t)
;;      ((or (null? l1) (null? l2)) #f)
;;      ((and (atom? (car l1)) (atom? (car l2)))
;;        (and (eqan (car l1) (car l2)) (eqlist? (cdr l1) (cdr l2))))
;;      ((or (atom? (car l1)) (atom? (car l2))) #f)
;;      (else (and (eqlist? (car l1) (car l2)) (eqlist? (cdr l1) (cdr l2))))
;;      )
;;     )
;;   )

(define eqlist?
  (lambda (l1 l2)
    (cond
     ((and (null? l1) (null? l2)) #t)
     ((or (null? l1) (null? l2)) #f)
     (else
      (and (my_equal? (car l1) (car l2))
	   (eqlist? (cdr l1) (cdr l2))))
     )
    )
  )


(define my_equal?
  (lambda (s1 s2)
    (cond
     ((and (atom? s1) (atom? s2)) (eq? s1 s2))
     ((or (atom? s1) (atom? s2)) #f)
     (else (eqlist? s1 s2))
     )
    )
  )

(define (main args)
  (print (eqlist? '(sausage pie) '(sausage pie)))
  (print (eqlist? '((sausage) pie) '((sausage) pie)))
  (print (eq? #f (eqlist? '((sausage) pie) '(sausage pie))))
  (print (eq? #f (eqlist? '((sausage) pie) '((cottage) pie))))
  (print (my_equal? '(sausage pie) '(sausage pie)))
  (print (my_equal? 'sausage 'sausage))
  (print (eq? #f (my_equal? 'sausage 'beans)))
  
  )
