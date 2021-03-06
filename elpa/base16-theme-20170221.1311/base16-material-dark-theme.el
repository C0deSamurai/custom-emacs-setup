;; base16-material-dark-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/chriskempson/base16)

;;; Authors:
;; Scheme: Nicholas Miklaucic
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-material-dark-colors
  '(:base00 "#212121"
    :base01 "#616161"
    :base02 "#7e57c2"
    :base03 "#757575"
    :base04 "#9e9e9e"
    :base05 "#bdbdbd"
    :base06 "#e0e0e0"
    :base07 "#eeeeee"
    :base08 "#7e57c2"
    :base09 "#5c6bc0"
    :base0A "#8bc34a"
    :base0B "#4caf50"
    :base0C "#e91e63"
    :base0D "#ab47bc"
    :base0E "#f44336"
    :base0F "#ffeb3b")
  "All colors for Base16 material are defined here.")

;; Define the theme
(deftheme base16-material-dark)

;; Add all the faces to the theme
(base16-theme-define 'base16-material-dark base16-material-dark-colors)

;; Mark the theme as provided
(provide-theme 'base16-material-dark)

(provide 'base16-material-dark)

;;; base16-material-dark-theme.el ends here
