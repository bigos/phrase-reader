;;;; rtf-reader-eng.lisp

(in-package #:rtf-reader-eng)

(defparameter rtf-file #p "/tmp/eng/bhs_E_01.rtf")

(defun read-doc (file)
  (with-open-file (s file)
    (car
     (loop for l = (read-line s nil 'eof)
        then (read-line s nil 'eof)
        until (eq l 'eof)
        collect l))))

(defun downcase-words (wl)
  (loop for w in wl collect (if (typep w 'string)
                                (string-downcase w)
                                w)))

(defun words-in-file (file)
  (format t "~&reading file ~A~%" file)
  (remove-if (lambda (x) (or (symbolp x)
                             (equal x  "\\")))
             (alexandria::flatten (parse 'sexp (read-doc file)))))

(defun main ()
  (let ((all-files (cl-fad:list-directory #p "/tmp/eng/")))
    (format t "phrase reader as rtf reader eng~%")
    ))
