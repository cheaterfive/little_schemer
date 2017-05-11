(load "atom.scm")

(define leftmost
  (lambda (l)
    (cond
     ((atom? (car l)) (car l))
     (else (leftmost (car l)))
     )
    )
  )

(define (main args)
  (print (leftmost '(bob jeff fred)))
  (print (leftmost '(((bob) and) jeff fred)))
  )
