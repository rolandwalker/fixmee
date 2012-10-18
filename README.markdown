[![Build Status](https://secure.travis-ci.org/rolandwalker/fixmee.png)](http://travis-ci.org/rolandwalker/fixmee)

Overview
========

Quickly navigate to FIXME notices in Emacs.

Quickstart
----------

```lisp
(require 'fixmee)
 
(global-fixmee-mode 1)
 
;; right-click on the word "fixme" in a comment
 
;; for next-error support:
;;
;; M-x fixmee-view-listing RET
```

fixmee-mode
-----------

Fixmee-mode tracks `fixme` notices in code comments, highlights them,
ranks them by urgency, and lets you navigate to them quickly.

Urgency of `fixme` notices is indicated by repeating the final character.
For example, one might write `FIXMEEEEEEEEE` for an important issue.

To use fixmee-mode, add the following to your ~/.emacs

```lisp
(require 'fixmee)
(global-fixmee-mode 1)
```

Then, open some buffers and right-click on the word "fixme" in a
comment

or press

	C-c f

or

	M-x fixmee RET

or

	roll the mouse wheel when hovering over the text "fixm" in the modeline.

or

	execute `fixmee-view-listing` to navigate using `next-error` conventions.

Key Bindings
------------

The default key bindings are

	C-c f  fixmee-goto-nextmost-urgent
	C-c F  fixmee-goto-prevmost-urgent
	C-c v  fixmee-view-listing
	M-n    fixmee-goto-next-by-position      ; only when the point is
	M-p    fixmee-goto-previous-by-position  ; inside a fixme notice

To constrain the nextmost/prevmost-urgent commands to the current
buffer only, use a universal prefix argument, eg

	C-u C-c f

When the `smartrep` package is installed, the `C-c` prefix need not
be used for consecutive fixmee-mode keyboard commands.  Instead, just
keep pressing `f` (or whichever key you set in customize).

There is also a context menu and mouse-wheel bindings on the
minor-mode lighter in the modeline:

	        mouse-1  context menu
	  wheel-down/up  next/prev by urgency
	M-wheel-down/up  next/prev by position

Patterns
--------

The following fixme patterns are supported by default:

	@@@
	XXX         ; only this one is case-sensitive
	todo
	fixme

Compatibility and Requirements
------------------------------

	GNU Emacs version 24.3-devel     : yes, at the time of writing
	GNU Emacs version 24.1 & 24.2    : yes
	GNU Emacs version 23.3           : yes
	GNU Emacs version 22.3 and lower : no

Requires:  
[button-lock.el](http://github.com/rolandwalker/button-lock),  
[tabulated-list.el](http://raw.github.com/sigma/tabulated-list.el/master/tabulated-list.el) (included with Emacs 24.x)

Uses if present:  
[smartrep.el](http://github.com/myuhe/smartrep.el),  
[nav-flash.el](http://github.com/rolandwalker/nav-flash),  
[back-button.el](http://github.com/rolandwalker/back-button),  
[string-utils.el](http://github.com/rolandwalker/string-utils)
