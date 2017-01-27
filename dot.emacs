
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Add MELPA to package archive:
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Add powerline:
(require 'powerline)
(powerline-default-theme)

;; Add spaceline (spacemacs theme for powerline)
(require 'spaceline-config)
(spaceline-spacemacs-theme)

;; I like the Leuven theme the best:
(load-theme 'leuven t)                  ; For Emacs 24+.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (wanderlust leuven-theme spaceline powerline))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(autoload 'wl "wl" "Wanderlust" t)

;; Wanderlust configuration
;; IMAP, gmail:
(setq elmo-imap4-default-server "imap.gmail.com"
      elmo-imap4-default-user "anders@jensenwaud.com"
      elmo-imap4-default-authenticate-type 'clear
      elmo-imap4-default-port '993
      elmo-imap4-default-stream-type 'ssl

      ;; For non ascii-characters in folder-names
      elmo-imap4-use-modified-utf7 t)

;; SMTP
(setq wl-smtp-connection-type 'starttls
      wl-smtp-posting-port 587
      wl-smtp-authenticate-type "plain"
      wl-smtp-posting-user "anders@jensenwaud.com"
      wl-smtp-posting-server "smtp.gmail.com"
      wl-local-domain "jensenwaud.com"
      wl-message-id-domain "smtp.gmail.com")

(setq wl-from "Anders Jensen-Waud <anders@jensenwaud.com>"

      ;; All system folders (draft, trash, spam, etc) are placed in the
      ;; [Gmail]-folder, except inbox. "%" means it's an IMAP-folder
      wl-default-folder "%inbox"
      wl-draft-folder   "%[Gmail]/Drafts"
      wl-trash-folder   "%[Gmail]/Trash"
      ;; The below is not necessary when you send mail through Gmail's SMTP server,
      ;; see https://support.google.com/mail/answer/78892?hl=en&rd=1
      ;; wl-fcc            "%[Gmail]/Sent"

      ;; Mark sent messages as read (sent messages get sent back to you and
      ;; placed in the folder specified by wl-fcc)
      wl-fcc-force-as-read    t

      ;; For auto-completing foldernames
      wl-default-spec "%")
