(load "length.scm")
(load "sub1")

(define pick
  (lambda (n lat)
    (cond
     ((eq? n 1) (car lat))
     (else (pick (sub1 n) (cdr lat)))
     )
    )
  )

(define (main args)
  (print (eq? 'hotdog (pick 3 '(6 3 hotdog))))
  (print (eq? 6 (pick 1 '(6 3 hotdog))))
  (print (eq? 6 (pick 1 '(6))))
  ; (print (eq? 6 (pick 5 '(6 3 hotdog))))  ERROR!
  )
