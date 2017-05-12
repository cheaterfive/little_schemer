(load "atom.scm")

(define numbered?
  (lambda (aexp)
    (cond
     ((atom? aexp) (number? aexp))
     ((eq? (car (cdr aexp)) (quote +)) (and (numbered? (car aexp)) (numbered? (car (cdr (cdr aexp))))))
     ((eq? (car (cdr aexp)) (quote x)) (and (numbered? (car aexp)) (numbered? (car (cdr (cdr aexp))))))
     ((eq? (car (cdr aexp)) (quote ^)) (and (numbered? (car aexp)) (numbered? (car (cdr (cdr aexp))))))
     )
    )
  )
   

(define (main args)
  (print (eq? #f (numbered? 'sausage)))
  (print (numbered? '(3 + 4)))
  (print (eq? #f (numbered? '(sausage + 4))))
  (print (numbered? '(5 x (3 + 4))))
  )
    
