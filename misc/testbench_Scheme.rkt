
;; Tail recursion of mix
(define (tr-mix x y accum)
  (cond ((null? x) y)
        ((null? y) x)
        (else (cons (car x) (cons (car y) (tr-mix (cdr x) (cdr y) accum))))))

(define (mix x y) (tr-mix x y '()))


;; tail recursion of all-but-last
(define (tr-all-but-last xs accum)
  (cond ((null? (cdr xs)) accum)
        (else (cons (car xs) (tr-all-but-last(cdr xs) accum)))))

(define (all-but-last xs )(tr-all-but-last xs '()))


;; tail recursion of take-while, does not work properly
(define (tr-take-while p yl accum)
  (cond ((null? yl) accum)
        ((p (car yl)) (cons (car yl) (tr-take-while p (cdr yl) accum)))
        (else accum)))

(define (take-while p yl) (tr-take-while p yl '()))

