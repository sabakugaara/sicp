;;; # 2.1 Introduction to Data Abstraction

;;; ## 2.1.1 Example: Arithmetic Operations for Rational Numbers
;;; 以有理数的案例介绍数据结构的抽象。同时引入 scheme 语言的 Pairs 结构
;;; 可以如下表示一个有理数: 

(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))


(define (add-rat x y))
  (make-rat (+ (*(numer x) (denom y))
                (* (number y) (denom x)))
              (* (denom x) (denom y)))

;;; number 返回有理数的分子, denom 返回有理数分母部分
;;; 尝试打印一个有理数，如下所示

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define one-half (make-rat 1 2))
(print-rat one-half)


;;; ## 2.1.2  Abstraction Barriers 抽象屏障
;;; 这一节讲的其实是分层设计思想，从底层的 api: `cons/car/cdr` 到 `number/denom` ，再到封装高层 api: `add-rat`


;;; ### 2.1.3 What Is Meant By Data

;;; In general, we can think of data as defined by some collection of selectors and constructors, together with specified conditions that these procedures must fulfill in order to be a valid representation.
;;; > 翻译：一般来说，我们可以认为数据是由一些选择器和构造器的集合定义的，以及这些过程必须满足的特定条件才能成为有效的表示。
;;; 这里的数据可以理解对象：一组数据加操作对对象的约束条件构成了对象。


;;; ### 2.1.4 Extended Exercise: Interval Arithmetic
;;; > chatgpt: "Interval Arithmetic" 是一种将“区间”（表示不精确数量的可能值范围的对象）作为组合的算术操作集来实现的想法。通过将两个区间相加、相减、相乘或相除，得到的结果本身也是一个区间，表示结果的范围。这种方法可以用于处理不确定性或误差分析等问题。在 Harold Abelson 和 Gerald Jay Sussman 的《计算机程序的构造和解释》一书中，第 155 页详细介绍了 Interval Arithmetic 的概念和应用
;;; 介绍了一种误差计算方法
