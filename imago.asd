;;; IMAGO library
;;; ASDF system definition
;;;
;;; Copyright (C) 2004-2005  Matthieu Villeneuve (matthieu.villeneuve@free.fr)
;;;
;;; The author grants you the rights to distribute
;;; and use this software as governed by the terms
;;; of the Lisp Lesser GNU Public License
;;; (http://opensource.franz.com/preamble.html),
;;; known as the LLGPL.


(defpackage #:imago-system
  (:use #:asdf #:common-lisp))

(in-package #:imago-system)

(defsystem imago
  :name "imago"
  :depends-on (:zlib)
  :components ((:file "package")
               (:file "utilities" :depends-on ("package"))
               (:file "color" :depends-on ("package"))
               (:file "image" :depends-on ("package"))
               (:file "image-utilities" :depends-on ("image"))
               (:file "crc32" :depends-on ("package"))
               (:file "drawing" :depends-on ("image-utilities" "color"))
               (:file "convert" :depends-on ("image" "color"))
               (:file "convolve" :depends-on ("image" "color"))
               (:file "compose" :depends-on ("image" "color"))
               (:file "operations" :depends-on ("image" "color"))
               (:file "file-png" :depends-on ("image" "color" "crc32"))
               (:file "file-pnm" :depends-on ("image" "color"))
               (:file "file-tga" :depends-on ("image" "color"))))