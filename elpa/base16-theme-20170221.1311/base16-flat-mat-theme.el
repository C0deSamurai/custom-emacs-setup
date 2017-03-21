;; base16-materia-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/chriskempson/base16)

;;; Authors:
;; Scheme: Nicholas Miklaucic
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-flat-mat-colors
  '(:base00 "#f2f2f2"
    :base01 "#d1d1d1"
    :base02 "#b1b1b1"
    :base03 "#909090"
    :base04 "#6f6f6f"
    :base05 "#4e4e4e"
    :base06 "#2e2e2e"
    :base07 "#0d0d0d"
    :base08 "#ad1f1f"
    :base09 "#ad8a1f"
    :base0A "#66ad1f"
    :base0B "#1fad42"
    :base0C "#1fadad"
    :base0D "#1f42ad"
    :base0E "#661fad"
    :base0F "#ad1f8a")
  "All colors for Base16 flat-mat are defined here.")

;; Define the theme
(deftheme base16-flat-mat)

;; Add all the faces to the theme
(base16-theme-define 'base16-flat-mat base16-flat-mat-colors)

;; Mark the theme as provided
(provide-theme 'base16-flat-mat)

(provide 'base16-flat-mat)

;;; base16-materia-theme.el ends here
