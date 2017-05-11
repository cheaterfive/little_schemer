(load "length.scm")
(load "sub1")

(define rempick
  (lambda (n lat)
    (cond
     ((eq? n 1) (cdr lat))
     (else (cons (car lat) (rempick (sub1 n) (cdr lat))))
     )
    )
  )

(define (main args)
  (print (equal? '(6 3) (rempick 3 '(6 3 hotdog))))
  (print (equal? '(3 hotdog) (rempick 1 '(6 3 hotdog))))
  (print (equal? '() (rempick 1 '(6))))
  )
