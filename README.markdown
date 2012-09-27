[![Build Status](https://secure.travis-ci.org/rolandwalker/fixmee.png)](http://travis-ci.org/rolandwalker/fixmee)

Overview
========

Quickly navigate to FIXME notices in Emacs.

Quickstart
----------

	(require 'fixmee)

	(global-fixmee-mode 1)

	right-click on the word "fixme" in a comment

fixmee-mode
-----------

Fixmee-mode tracks `fixme` notices in code comments, highlights them,
ranks them by urgency, and lets you navigate to them quickly.

Urgency of `fixme` notices is indicated by repeating the final character.
For example, one might write `FIXMEEEEEEEEE` for an important issue.

To use fixmee-mode, add the following to your ~/.emacs

	(require 'fixmee)
	(global-fixmee-mode 1)

Then, open some buffers and right-click on the word "fixme" in a
comment

or press

	C-c f

or

	M-x fixmee RET

or

	roll the mouse wheel when hovering over the text "fixm" in the modeline.

Key Bindings
------------

The default key bindings are

	C-c f  fixmee-goto-nextmost-urgent
	C-c F  fixmee-goto-prevmost-urgent
	M-n    fixmee-goto-next-by-position      ; only when the point is
	M-p    fixmee-goto-previous-by-position  ; inside a fixme notice

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

Tested on GNU Emacs versions 23.3 and 24.1

Requires [button-lock.el](http://github.com/rolandwalker/button-lock)

Uses if present: [smartrep.el](http://github.com/myuhe/smartrep.el), [nav-flash.el](http://github.com/rolandwalker/nav-flash), [back-button.el](http://github.com/rolandwalker/back-button)
