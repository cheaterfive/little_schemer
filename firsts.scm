(define firsts
  (lambda (l)
    (cond
     ((null? l) (quote ())) ; For some reason the ' quote syntax fails here
     (else (cons (car (car l)) (firsts (cdr l))))
     )
    )
  )


(define (main args)
  (define input '((a b) (c d) (e f)))
  (define result '(a c e))
  ;(print (firsts input))
  (print (equal? result  (firsts input)))

  (define input2 '((a b) (c) (e f)))
  (define result2 '(a c e))
  (print (equal? result2  (firsts input2)))

  (define input3 '(((a g) b) (c) ((e) f)))
  (define result3 '((a g) c (e)))
  (print (equal? result3  (firsts input3)))
  0
)
