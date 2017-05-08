(load "my_eq.scm")

(define eqan
  (lambda (n1 n2)
    (cond
     ((and (number? n1) (number? n2)) (= n1 n2))
     ((or (number? n1) (number? n2)) #f)
     (else (eq? n1 n2))
     )
    )
  )

(define (main args)
  (print (equal? #t (eqan 3 3)))
  (print (equal? #f (eqan 4 3)))
  (print (equal? #f (eqan 'a 3)))
  (print (equal? #t (eqan 'a 'a)))
  )
