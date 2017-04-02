(TeX-add-style-hook "week7"
 (lambda ()
    (LaTeX-add-labels
     "prob"
     "pnorm")
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

