;;; # 2.2 Hierarchical Data and the Closure Property

;;; ## 2.2.1 Representing Sequences
;;; 介绍了 scheme 中的 list 原生结构，并给出了 list 操作实现，例如取 n 位，以及 map 等操作


;;; list-ref 操作
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) 
                (- n 1))))
;;; 如上所示，利用迭代的思路，实现取 list 中的 n 个元素
;;; 假设 n = 3，则迭代等价于 `(car (cdr (cdr (cdr items ))))`


;;; 计算 list 长度
(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) 
                     (+ 1 count))))

;;; append 合并两个列表
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1)
            (append (cdr list1)
                    list2))))
;;; ## 2.2.2 层次结构

;;; 列表嵌套可以很自然的表示具有复杂层次结构的数据，例如 `(cons (list 1 2) (list 3 4))`
;;; 并给出了递归便利一棵树

(define (scale-tree tree factor)
  (cond ((null? tree) nil)
        ((not (pair? tree)) 
         (* tree factor))
        (else
         (cons (scale-tree (car tree)
                           factor)
               (scale-tree (cdr tree) 
                           factor)))))

(scale-tree (list 1 
                  (list 2 (list 3 4) 5) 
                  (list 6 7))
            10)

;;; ## 2.2.3 Sequences as Conventional Interfaces
;;; 

