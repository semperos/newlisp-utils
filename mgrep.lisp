;; Regularize between shell script and executable
(if (= (main-args 0) "/usr/bin/newlisp")
    (set 'prog-args (rest (rest (main-args))))
    (set 'prog-args (rest (main-args))))

(dolist (fname (rest prog-args))
  (set 'line-count 0)
  (let ((file (open fname "r"))
        (regexes (parse (first prog-args) "||")))
    (while (read-line file)
      (inc line-count)
      (if (apply and
                 (map (fn (item)
                        (true? (find item (current-line) 0)))
                      regexes))
          (begin
            (print fname "/" line-count ": ")
            (write-line))))
    (close file)))

(exit)
