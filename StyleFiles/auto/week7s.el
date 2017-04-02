(TeX-add-style-hook "week7s"
 (lambda ()
    (LaTeX-add-labels
     "1"
     "2a"
     "2b"
     "2c"
     "2d"
     "3"
     "4")
    (TeX-run-style-hooks
     "inputenc"
     "utf8"
     "ifthen"
     "caption"
     "amscd"
     "amsmath"
     "srcltx"
     "latex2e"
     "art10"
     "article")))

