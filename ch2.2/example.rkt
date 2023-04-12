#lang sicp

;(define (make-vect x y)
;   (cons x y))

(define make-vect cons)
(define xcor  car)
(define ycor cdr)

;(define make-vect list)
;(define xcor  car)
;(define ycor cadr)

;(define (xcor vect)
;  (car vect))

;(define (ycor vect)
;  (cdr vect))

(define (+vect vec1 vec2)
  (make-vect (+ (xcor vec1) (xcor vec2))
             (+ (ycor vec1) (ycor vec2))))

(define (scale-vect vect factor)
   (make-vect (* factor (xcor vect))
              (* factor (ycor vect))))



;(define (make-segment p1 p2)
;  (cons p1 p2))
(define make-segment list)
(define start-segment car)
(define end-segment cadr)

;(define (start-segment segment)
;  (car segment))

;(define (end-segment segment)
;  (cdr segment))


(define p1 (make-vect 2 3))
(define p2 (make-vect 5 4))
(define s1 (make-segment p1 p2))
(xcor (start-segment s1))
(ycor (end-segment s1))


(define make-rectangle list)
(define origin car)
(define horiz cadr)
(define vert caddr)
