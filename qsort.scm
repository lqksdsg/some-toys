#lang racket
(define qsort
  (lambda (mylist)
    (cond
      ((eq? '() mylist) mylist)
      ((= (length mylist) 1) mylist)
      (else (append (qsort
                     (filter (lambda (x) (<= x (car mylist))) (cdr mylist)))
                    (list (car mylist))
                    (qsort
                     (filter (lambda (x) (> x (car mylist))) (cdr mylist)))))
            )))

;test
(qsort '(2 3 53 2 32 52 34 21 234 1 0 -1 23 30 34 2 34 33)) ;=> '(-1 0 1 2 2 2 3 21 23 30 32 33 34 34 34 52 53 234)