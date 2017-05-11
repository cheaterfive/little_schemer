(load "/Users/Richard/Documents/Programming/chicken/code/little_schemer/chapt_4/eqan.scm")
(load "/Users/Richard/Documents/Programming/chicken/code/little_schemer/chapt_1_to_3/atom.scm")


(define occur*
  (lambda (a lat)
    (cond
     ((null? lat) 0)
     ((atom? (car lat))
      (cond
       ((eqan a (car lat)) (add1 (occur* a (cdr lat))))
       (else (occur* a (cdr lat)))
       )
      )
     (else (+ (occur* a (car lat)) (occur* a (cdr lat))))
     )
    )
  )

(define (main args)
  (print (equal? 2 (occur* 'hotdog '(mustard hotdog ketchup hotdog))))
  (print (equal? 3 (occur* 'hotdog '((mustard hotdog) hotdog ketchup (((hotdog)))))))
  )
