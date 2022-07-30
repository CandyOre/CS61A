(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cddr s))
  ; Alternative solution
  ; (cadr (cdr s))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond ((< num 0) -1)
        ((> num 0) 1)
        (else 0))
)


(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (= y 1) x
    (if (= 1 (remainder y 2))
      (* x (pow x (- y 1)))
      (square (pow x (/ y 2)))))
)

