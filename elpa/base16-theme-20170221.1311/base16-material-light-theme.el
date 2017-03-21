;; base16-material-light-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/chriskempson/base16)

;;; Authors:
;; Scheme: Nicholas Miklaucic
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-material-light-colors
  '(:base00 "#f5f5f5"
    :base01 "#e0e0e0"
    :base02 "#29b6f6"	    
    :base03 "#bdbdbd"
    :base04 "#f5f5f5"
    :base05 "#616161"
    :base06 "#424242"
    :base07 "#212121"
    :base08 "#ff5722"
    :base09 "#3f51b5"
    :base0A "#9c27b0"
    :base0B "#4caf50"
    :base0C "#673ab7"
    :base0D "#e91e63"
    :base0E "#f44336"
    :base0F "#ffc107")
  "All colors for Base16 material are defined here.")

;; Define the theme
(deftheme base16-material-light)

;; Add all the faces to the theme
(base16-theme-define 'base16-material-light base16-material-light-colors)

;; Mark the theme as provided
(provide-theme 'base16-material-light)

(provide 'base16-material-light)

;;; base16-material-light-theme.el ends here
