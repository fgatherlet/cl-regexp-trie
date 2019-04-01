#|
  This file is a part of cl-regexp-trie project.
|#

(defsystem "cl-regexp-trie-test"
  :defsystem-depends-on ("prove-asdf")
  :author "fgatherlet"
  :license "MIT"
  :depends-on ("cl-regexp-trie"
               "prove"
               "trivia"
               )
  :components ((:module "tests"
                :components
                ((:test-file "cl-regexp-trie"))))
  :description "Test system for cl-regexp-trie"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
