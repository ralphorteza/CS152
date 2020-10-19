;;;Snake Bytes: Ralph Orteza, Manjari Maheshwari

;;;Function all-but-last: list -> list
;;;Remove the last element of the list
(define (all-but-last xs)
  (cond ((null? (cdr xs)) '())
        (else (cons (car xs) (all-but-last(cdr xs))))))

;;;Predicate member?: element list -> Boolean
;;;Returns #t if the list contains the element and #f otherwise
(define (member? x xs)
  (cond ((null? xs) #f)
        ((equal? x (car xs)) #t)
        (else (member? x (cdr xs)))))

;;;Predicate common?: list list -> Boolean
;;;Returns #t if the lists have at least one element in common
(define (common? x y)
  (cond ((null? x) #f)
        ((null? y) #f)
        ((member? (car x) y) #t)
        (else (common? (cdr x) y))))


;;;Function make-list: int -> list
;;;Return a list of integers from start to not incl. stop
;;;separated by step
(define (make-list start stop step)
  (cond ((> start stop) '())
        ((equal? start stop) '())
        (else (cons start (make-list(+ step start) stop step)))))

;;;Function mix: list list -> list
;;;Return a list formed by alternating the elements of both lists
(define (mix x y)
  (cond ((null? x) y)
        ((null? y) x)
        (else (cons (car x) (cons (car y) (mix (cdr x) (cdr y)))))))


;;;Fuction take-while: predicate list -> list
;;;Return a list that returns a sequence of elements that meet
;;;predicate criteria
(define (take-while p x)
  (cond ((null? x) '())
        ((p (car x)) (cons (car x) (take-while p (cdr x))))
        (else '())))

 
;;;Predicate at-least-two? list -> Boolean
;;;Returns #t if numbers are increasing by at least two
(define (at-least-two? x)
  (cond ((null? x) #t)
        ((null? (cdr x)) #t)
        ((<= (+ 2 (car x)) (car (cdr x))) (at-least-two? (cdr x)))
        (else #f)))


;;;Function lowestm list -> element ***CONTAINS BUILT-IN "MIN" FN***
;;;Returns the lowest number in the list
(define (lowest x)
  (if (null? (cdr x)) (car x)
        (min (car x) (lowest (cdr x)))))

