(TeX-add-style-hook "week11"
 (lambda ()
    (LaTeX-add-labels
     "manager")
    (TeX-add-symbols
     '("xbar" 3)
     "Xb"
     "Yb"
     "xb"
     "yb")
    (TeX-run-style-hooks
     "latex2e"
     "tutorial10"
     "tutorial"
     "stdtut")))

