;;; 正则序（Normal Order），函数参数在使用时再求值
;;; 应用序（Application Order） 则是对函数参数立即求值。
;;; 所以如下过程，应用序会在执行 `(test 0 (p))` 时 对参数 `(p)` 求值
;;; 导致程序死循环；而正则序 由于 x = 0 成立，程序正常返回 0
(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

(test 0 (p))