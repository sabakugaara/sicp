;;; # 2.2 Hierarchical Data and the Closure Property

;;; ## 2.2.1 Representing Sequences
;;; 介绍了 scheme 中的 list 原生结构，并给出了 list 操作实现，例如取 n 位，以及 map 等操作


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

