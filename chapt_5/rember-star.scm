(load "../chapt_1_to_3/atom.scm")

(define rember*
  (lambda (a lat)
    (cond
     ((null? lat) '())
     ((atom? (car lat))
      (cond
       ((eq? a (car lat)) (rember* a (cdr lat)))
       (else (cons (car lat) (rember* a (cdr lat))))
       ))
     (else (cons (rember* a (car lat))(rember* a (cdr lat))))
     )
    )
  )
     
    
(define (main args)
  (print (rember* 'mint '((lamb mint) chops (plus) ((mint jelly)))))
  (print (equal? '((lamb) chops (plus) ((jelly)))  (rember* 'mint '((lamb mint) chops (plus) ((mint jelly))))))
  (print (equal? '(lettuce and tomato)  (rember* 'bacon '(bacon lettuce and tomato))))
  (print (equal? '(bacon lettuce and tomato)  (rember* 'toast '(bacon lettuce and tomato))))
  (print (equal? '((coffee) tea)  (rember* 'cup '((coffee cup) tea cup))))
  )
