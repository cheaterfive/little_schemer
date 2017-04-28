(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define lat?
  (lambda (l)
    (cond
     ((null? l) #t)
     ((atom? (car l)) (lat? (cdr l)))
     (else #f))))

(define member?
  (lambda (a lat)
    (cond
     ((null? lat) #f)
     (else (or (eq? a (car lat)) (member? a (cdr lat))))
     )))

(define remember
  (lambda (a lat)
    (cond
     ((null? lat) (#f)
     ))))
     

(define (do_nothing x)
  (print "Hi")
  0)

    
(define (main args)
  (print (member? 'b '(b c)))
  (print (not (member? 'a '(b c))))

  0)
