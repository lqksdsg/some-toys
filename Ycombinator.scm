#lang racket

;Y = λf.(λx.f(x x)) (λx.f(x x))
;η-transform => Y = λf.(λx.f(λv.((x x)v))) (λx.f(λv.((x x)v)))

(define Y (lambda (g)
            ((lambda (x)
              (lambda (n)
                ((g (x x)) n)))
             (lambda (x)
               (lambda (n)
                 ((g (x x)) n))))))

;factory
(define F (lambda (fac) (lambda (x)
                            (if (= x 0)
                                1
                                (* x (fac (- x 1)))))))


;test
((Y F) 5) ;=>120

