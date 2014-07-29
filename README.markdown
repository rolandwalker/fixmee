[![Build Status](https://secure.travis-ci.org/rolandwalker/fixmee.png?branch=master)](http://travis-ci.org/rolandwalker/fixmee)

# Overview

Quickly navigate to FIXME notices in Emacs.

![fixmee_context_menu](https://raw.githubusercontent.com/rolandwalker/fixmee/master/fixmee_context_menu.png)

## Quickstart

```elisp
(require 'fixmee)
 
(global-fixmee-mode 1)
 
;; right-click on the word "fixme" in a comment
 
;; for next-error support:
;;
;; M-x fixmee-view-listing RET
```

## Explanation

Fixmee-mode tracks `fixme` notices in code comments, highlights them,
ranks them by urgency, and lets you navigate to them quickly.

A distinguishing feature of this library is that it tracks the
*urgency* of each notice, allowing the user to jump directly to
the most important problems.

Urgency of "fixme" notices is indicated by repetitions of the final
character.  For example, one might write `FIXMEEEEEEEEE` for an
important issue.  The `fixmee-goto-nextmost-urgent` command will
navigate to the longest notice first.

To use fixmee-mode, add the following to your `~/.emacs` file

```elisp
(require 'fixmee)
(global-fixmee-mode 1)
```

Then, open some buffers and right-click on the word "fixme" in a
comment

or press

<kbd>C-c</kbd> <kbd>f</kbd>

or

<kbd>M-x</kbd> <kbd>fixmee</kbd> <kbd>RET</kbd>

or

	roll the mouse wheel when hovering over the text "fixm" in the modeline.

or

	execute `fixmee-view-listing` to navigate using `next-error` conventions.

## Key Bindings

The default key bindings are

Keystrokes                   | Function
-----------------------------|--------------------------------
<kbd>C-c</kbd> <kbd>f</kbd>  | `fixmee-goto-nextmost-urgent`
<kbd>C-c</kbd> <kbd>F</kbd>  | `fixmee-goto-prevmost-urgent`
<kbd>C-c</kbd> <kbd>v</kbd>  | `fixmee-view-listing`
<kbd>M-n</kbd>               | `fixmee-goto-next-by-position`      ; only when the point is
<kbd>M-p</kbd>               | `fixmee-goto-previous-by-position`  ; inside a fixme notice

To constrain the nextmost/prevmost-urgent commands to the current
buffer only, use a universal prefix argument, eg

<kbd>C-u</kbd> <kbd>C-c</kbd> <kbd>f</kbd>

When the [smartrep](http://github.com/myuhe/smartrep.el) package is installed, the <kbd>C-c</kbd> prefix need not
be used for consecutive fixmee-mode keyboard commands.  Instead, just
keep pressing <kbd>f</kbd> (or whichever key you set in customize).

There is also a context menu and mouse-wheel bindings on the
minor-mode lighter in the modeline:

Mouse action            | Effect
------------------------|-----------------------
<kbd>mouse-1</kbd>      | context menu
<kbd>wheel-down</kbd>   | next by urgency
<kbd>wheel-up</kbd>     | previous by urgency
<kbd>M-wheel-down</kbd> | next by position
<kbd>M-wheel-up</kbd>   | previous by position

## Patterns

The following fixme patterns are supported by default:

	@@@
	XXX         ; only this one is case-sensitive
	todo
	fixme

## Compatibility and Requirements

	GNU Emacs version 24.4-devel     : yes, at the time of writing
	GNU Emacs version 24.3           : yes
	GNU Emacs version 23.3           : yes
	GNU Emacs version 22.2           : yes, with some limitations
	GNU Emacs version 21.x and lower : unknown

Requires:  
[button-lock.el](http://github.com/rolandwalker/button-lock),  
[tabulated-list.el](http://raw.githubusercontent.com/sigma/tabulated-list.el/master/tabulated-list.el) (included with Emacs 24.x)

Uses if present: [nav-flash.el](http://github.com/rolandwalker/nav-flash), [back-button.el](http://github.com/rolandwalker/back-button), [string-utils.el](http://github.com/rolandwalker/string-utils), [smartrep.el](http://github.com/myuhe/smartrep.el)
