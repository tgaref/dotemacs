;;; package --- Summary
;;; Commentary:
(require 'package)

;;; Code:
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode 0)

(server-start)

(load "~/.emacs.d/myexwm")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine 'xetex)
 '(TeX-source-correlate-method 'synctex)
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-selection
   '(((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-html "xdg-open")
     (output-pdf "Evince")))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#21252B" "#E06C75" "#98C379" "#E5C07B" "#61AFEF" "#C678DD" "#56B6C2" "#ABB2BF"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"] t)
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(beacon-color "#cc6666")
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "5b809c3eae60da2af8a8cfba4e9e04b4d608cb49584cb5998f6e4a1c87c057c4" "5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "df6208e35f983c139d6f282ee69f8f8d9eadce6a46eb4acdce00bfb0001f03ae" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "9e39a8334e0e476157bfdb8e42e1cea43fad02c9ec7c0dbd5498cf02b9adeaf1" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "9efb2d10bfb38fe7cd4586afb3e644d082cbcdb7435f3d1e8dd9413cbe5e61fc" "587938eeeaefd2b2f68a0970e02985246a28c02c1c140cb0943d2b6909c47261" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "6c3b5f4391572c4176908bb30eddc1718344b8eaff50e162e36f271f6de015ca" "6b80b5b0762a814c62ce858e9d72745a05dd5fc66f821a1c5023b4f2a76bc910" "7a994c16aa550678846e82edc8c9d6a7d39cc6564baaaacc305a3fdc0bd8725f" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "f3ab34b145c3b2a0f3a570ddff8fabb92dafc7679ac19444c31058ac305275e1" "5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" "4b145c789a876c8ba8f6d4218897a4e5902d8df9614de03bbd2d1c6427286680" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "3c2f28c6ba2ad7373ea4c43f28fcf2eed14818ec9f0659b1c97d4e89c99e091e" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" "8d7684de9abb5a770fbfd72a14506d6b4add9a7d30942c6285f020d41d76e0fa" "cf3d5d77679f7daed6a2c863e4f2e30427d5e375b254252127be9359957502ec" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "c277a699a303f589c6738f79ca4dc264b04bd93db5277e024cab9d5d2e97d533" "7f791f743870983b9bb90c8285e1e0ba1bf1ea6e9c9a02c60335899ba20f3c94" "d5f8099d98174116cba9912fe2a0c3196a7cd405d12fa6b9375c55fc510988b5" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "f2b56244ecc6f4b952b2bcb1d7e517f1f4272876a8c873b378f5cf68e904bd59" "1526aeed166165811eefd9a6f9176061ec3d121ba39500af2048073bea80911e" "229c5cf9c9bd4012be621d271320036c69a14758f70e60385e87880b46d60780" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "a339f231e63aab2a17740e5b3965469e8c0b85eccdfb1f9dbd58a30bdad8562b" "845103fcb9b091b0958171653a4413ccfad35552bc39697d448941bcbe5a660d" "d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "361f5a2bc2a7d7387b442b2570b0ef35198442b38c2812bf3c70e1e091771d1a" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "a7928e99b48819aac3203355cbffac9b825df50d2b3347ceeec1e7f6b592c647" "58c2c8cc4473c5973e77f4b78a68c0978e68f1ddeb7a1eb34456fce8450be497" "f47f2c6b2052c81ecf8f2da64f481a92b53a3fd17680b054ea9b81c916dee4b9" "ea44def1fa1b169161512d79a65f54385497a6a5fbc96d59c218f852ce35b2ab" "b69323309e5839676409607f91c69da2bf913914321c995f63960c3887224848" "d1ede12c09296a84d007ef121cd72061c2c6722fcb02cb50a77d9eae4138a3ff" "a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" "09cadcc2784baa744c6a7c5ebf2a30df59c275414768b0719b800cabd8d1b842" "b6b205574233656de25647bc13885902a42db51bef7428e7f90a7e332b68aace" "0eb3c0868ff890b0c4ee138069ce2a8936a8a69ba150efa6bfb9fb7c05af5ec3" "f0a76ae259b7be77e59f98501957eb45a10af0839dd9eb29fdd5691ed74771d4" "1f36ca86913068b7d8377a327394eecfff71be34119619f779cb229875ceec0c" "a70b47c87e9b0940f6fece46656200acbfbc55e129f03178de8f50934ac89f58" "2f945b8cbfdd750aeb82c8afb3753ebf76a1c30c2b368d9d1f13ca3cc674c7bc" "7533e1fc8345739ea0ace60330ebffdf9da46398490b4c36c7e48775e5621052" "3ee39fe8a6b6e0f1cbdfa33db1384bc778e3eff4118daa54af7965e9ab8243b3" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "e7b49145d311e86da34a32a7e1f73497fa365110a813d2ecd8105eaa551969da" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "cd4d1a0656fee24dc062b997f54d6f9b7da8f6dc8053ac858f15820f9a04a679" "62c81ae32320ceff5228edceeaa6895c029cc8f43c8c98a023f91b5b339d633f" "f27c3fcfb19bf38892bc6e72d0046af7a1ded81f54435f9d4d09b3bff9c52fc1" "a5956ec25b719bf325e847864e16578c61d8af3e8a3d95f60f9040d02497e408" "7d2e7a9a7944fbde74be3e133fc607f59fdbbab798d13bd7a05e38d35ce0db8d" "ef98b560dcbd6af86fbe7fd15d56454f3e6046a3a0abd25314cfaaefd3744a9e" "c856158cc996d52e2f48190b02f6b6f26b7a9abd5fea0c6ffca6740a1003b333" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "e269026ce4bbd5b236e1c2e27b0ca1b37f3d8a97f8a5a66c4da0c647826a6664" "06ffa2bf4e891580bfe6a5ce68d0909ed9c4278e5234ede6b3ba459ef35d9a1b" "47744f6c8133824bdd104acc4280dbed4b34b85faa05ac2600f716b0226fb3f6" "748d0e2ffdaf95015a539dcc95ab888283284ad7b076963760422cbe5e21903a" "eea01f540a0f3bc7c755410ea146943688c4e29bea74a29568635670ab22f9bc" "6ee6f99dc6219b65f67e04149c79ea316ca4bcd769a9e904030d38908fd7ccf9" "53f97243218e8be82ba035ae34c024fd2d2e4de29dc6923e026d5580c77ff702" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "ffca7ac44bfe9d585363f6bbf29f19529de216f85dce7a831dfc28883959ec05" "e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" default))
 '(default-input-method "greek")
 '(delete-selection-mode nil)
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(dired-listing-switches "-al --group-directories-first")
 '(dired-omit-files "^\\..*")
 '(display-time-mode t)
 '(emms-mode-line-icon-color "#1ba1a1")
 '(emms-mode-line-icon-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };"))
 '(eterm-256color-disable-bold nil)
 '(fci-rule-color "#3E4451")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-theme-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-theme-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-theme-fringe-yellow))
 '(frame-background-mode 'dark)
 '(gnus-logo-colors '("#0d7b72" "#adadad") t)
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };") t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type 'cabal-repl)
 '(highlight-changes-colors '("#ff8eff" "#ab7eff"))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   '(("#424748" . 0)
     ("#63de5d" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#424748" . 100)))
 '(hl-bg-colors
   '("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342"))
 '(hl-fg-colors
   '("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3"))
 '(hl-paren-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(ibuffer-deletion-face 'dired-flagged)
 '(ibuffer-filter-group-name-face 'dired-mark)
 '(ibuffer-marked-face 'dired-marked)
 '(ibuffer-title-face 'dired-header)
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#000000" "#fd971f"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#000000" "#b6e63e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#000000" "#525254"))
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(objed-cursor-color "#dc322f")
 '(package-selected-packages
   '(eglot eglot-jl smart-mode-line-atom-one-dark-theme smart-mode-line mood-line telephone-line minions exec-path-from-shell which-key lps-ui lsp-clients company-lsp lsp-haskell one-themes tuareg quelpa spaceline-config esh-autosuggest all-the-icons-ibuffer all-the-icons-ivy-rich cargo toml-mode lsp-ui company spaceline monokai-pro-theme monokai-theme org-bullets powerline spacemacs-theme swiper julia-mode use-package xterm-color julia-repl diredful ivy-rich modus-operandi-theme modus-vivendi-theme pdf-view rg desktop-environment exwm doom-modeline doom-themes alect-themes color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow dired-subtree all-the-icons-dired all-the-icons-ivy all-the-icons monokai-alt-theme god-mode dired-narrow lsp-julia lsp-mode markdown-mode dash-functional flycheck-julia openwith magit racer flycheck-rust rust-mode web-mode dante shell-switcher multi-eshell better-shell dired-ranger ox-reveal org iedit expand-region counsel org-reveal flymake-hlint haskell-mode utop merlin solarized-theme gruvbox-theme color-theme-solarized hc-zenburn-theme auctex racket-mode eterm-256color dired-single slime-company slime spaceline-all-the-icons smart-mode-line-powerline-theme distinguished-theme dakrone-theme badger-theme firecode-theme darkokai-theme atom-one-dark-theme atom-dark-theme afternoon-theme))
 '(pdf-misc-print-programm "/usr/bin/lpr")
 '(pdf-misc-print-programm-args '("-o media=A4"))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(pos-tip-background-color "#E6DB74")
 '(pos-tip-foreground-color "#242728")
 '(rustic-ansi-faces
   ["#002b36" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(server-mode t)
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(spacemacs-theme-custom-colors
   '((cursor . "#cc5b00")
     (head3 . "#ffdcb8")
     (base . "#f9fbe4")))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(tool-bar-mode nil)
 '(vc-annotate-background "#f6f0e1")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#e43838")
     (40 . "#f71010")
     (60 . "#ab9c3a")
     (80 . "#9ca30b")
     (100 . "#ef8300")
     (120 . "#958323")
     (140 . "#1c9e28")
     (160 . "#3cb368")
     (180 . "#028902")
     (200 . "#008b45")
     (220 . "#077707")
     (240 . "#259ea2")
     (260 . "#358d8d")
     (280 . "#0eaeae")
     (300 . "#2c53ca")
     (320 . "#1111ff")
     (340 . "#2020cc")
     (360 . "#a020f0")))
 '(vc-annotate-very-old-color "#a020f0")
 '(weechat-color-list
   (unspecified "#242728" "#424748" "#F70057" "#ff0066" "#86C30D" "#63de5d" "#BEB244" "#E6DB74" "#40CAE4" "#06d8ff" "#FF61FF" "#ff8eff" "#00b2ac" "#53f2dc" "#f8fbfc" "#ffffff"))
 '(window-divider-mode nil)
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 152 :width normal))))
 '(eterm-256color-blue ((t (:foreground "#268bd2"))))
 '(eterm-256color-bright-black ((t (:foreground "#fdf6e3" :weight semi-bold))))
 '(eterm-256color-bright-blue ((t (:foreground "DodgerBlue1" :weight semi-bold))))
 '(eterm-256color-bright-cyan ((t (:foreground "cyan2" :weight semi-bold))))
 '(eterm-256color-bright-green ((t (:foreground "green" :weight semi-bold))))
 '(eterm-256color-bright-magenta ((t (:foreground "#6c71c4" :weight semi-bold))))
 '(eterm-256color-bright-red ((t (:foreground "red" :weight semi-bold))))
 '(eterm-256color-bright-white ((t (:foreground "white" :weight semi-bold))))
 '(eterm-256color-bright-yellow ((t (:foreground "yellow" :weight semi-bold))))
 '(eterm-256color-cyan ((t (:foreground "#2aa198"))))
 '(eterm-256color-green ((t (:foreground "SpringGreen2"))))
 '(eterm-256color-magenta ((t (:foreground "#d33682"))))
 '(eterm-256color-red ((t (:foreground "#dc322f"))))
 '(eterm-256color-white ((t (:foreground "white"))))
 '(eterm-256color-yellow ((t (:foreground "#b58900"))))
 '(term ((t nil)))
 '(term-color-black ((t (:background "black" :foreground "#3F3F3F"))))
 '(term-color-blue ((t (:background "black" :foreground "#7CB8BB"))))
 '(term-color-cyan ((t (:foreground "#93E0E3" :background "#8CD0D3"))))
 '(term-color-green ((t (:foreground "#7F9F7F" :background "#9FC59F"))))
 '(term-color-magenta ((t (:foreground "#DC8CC3" :background "#CC9393"))))
 '(term-color-red ((t (:foreground "#AC7373" :background "#8C5353"))))
 '(term-color-white ((t (:foreground "#DCDCCC" :background "#656555"))))
 '(term-color-yellow ((t (:foreground "#DFAF8F" :background "#9FC59F"))))
 '(term-default-bg-color ((t (:inherit term-color-black))))
 '(term-default-fg-color ((t (:inherit term-color-white)))))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))



(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(put 'narrow-to-region 'disabled nil)

(provide 'init)

;;; init.el ends here
