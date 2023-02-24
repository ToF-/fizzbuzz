(defun multiple-p (n m)
  (= 0 (rem n m)))

(defun conc (a b)
  (concatenate 'string a b))

(defun tag (c r s)
  (if c (conc s r) s))

(defun fizzbuzz (x)
  (let* ((s0 (tag (multiple-p x 3) "fizz" ""))
         (s1 (tag (multiple-p x 5) "buzz" s0)))

    (if (equalp "" s1) x s1)))


(defun test (n)
  (dotimes (i n) (format t "~a~%" (fizzbuzz (1+ i)))))

(test 32)
(exit)
