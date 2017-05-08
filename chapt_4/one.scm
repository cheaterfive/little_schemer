(load "my_eq.scm")
(load "eqan.scm")

;; (define one?
;;   (lambda (n)
;;     (= n 1)
;;      )
;;     )

(define one?
  (lambda (n)
    (and (number? n) (= n 1))
     )
    )


(define (main args)
  (print (eq? #t (one? 1)))
  (print (eq? #f (one? 'a)))
  (print (eq? #f (one? 2)))
  )
