;; scheme 中 +/- 等操作符也只是函数，可以组成表达式
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))