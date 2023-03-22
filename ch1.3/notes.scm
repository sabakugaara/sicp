;;; # High Order
;;; [cube](cube) 过程的定义，使得 (cube 2) 相比直接使用 (* 2 2 2) 更加简便，可读性更强
(define (cube x)
  (* x x x))


;;; ## 1.3.1 Procedures as Arguments
;;; 过程可以作为参数使用，考虑下面两个相似的过程：
;;; - [整数累加](sum-integers)
;;; - [立方后再累加](sum-cubes)
;;; 完全可以将“累加“这一个过程抽象出来

(define (sum-integers a b)
  (if (> a b) 
      0 
      (+ a (sum-integers (+ a 1) b))))

(define (sum-cubes a b)
  (if (> a b) 
      0 
      (+ (cube a) 
         (sum-cubes (+ a 1) b))))

;;; 他们的模式如下：
;;; ```scheme
;;; (define (⟨name⟩ a b)
;;; (if (> a b)
;;;   0
;;;   (+ (⟨term⟩ a) 
;;;      (⟨name⟩ (⟨next⟩ a) b))))
;;; ```
;;; 
(define (inc n) (+ n 1))

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))


(define (sum-cubes a b)
  (sum cube a inc b))

(sum-cubes 1 10)

;;; 借用 [identity](identity) 辅助函数，整数累加重构为: 
(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))
