#lang racket

(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      (else
       (cond
         ((eq? (car lat) a)
          (multirember a (cdr lat)))
         (else (cons (car lat)
                     (multirember a
                                  (cdr lat)))))))))



(multirember `help `(help i am struggling help))
(cons 'i (multirember `help`(am struggling help)))
(cons `i (cons `am (multirember `help`(struggling help))))
(cons `i (cons `am (cons `struggling (multirember `help `(help)))))
(cons `i (cons `am (cons `struggling `())))
(cons `i (cons `am `(struggling)))
(cons `i `(am struggling))
`(i am struggling)
