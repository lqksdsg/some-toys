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
                            
      