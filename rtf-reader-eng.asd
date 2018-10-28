;;;; rtf-reader-eng.asd

(asdf:defsystem #:rtf-reader-eng
  :description "Describe rtf-reader-eng here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:esrap #:alexandria #:cl-fad #:cl-ppcre)
  :components ((:file "package")
               (:file "rtf-reader-eng")))
