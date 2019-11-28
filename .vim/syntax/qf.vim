" Vim syntax file
" Language:  Quickfix window
" Maintainer: Bram Moolenaar <Bram@vim.org>
" Last change:        2001 Jan 15

" Quit when a syntax fule was already loaded
if exists("b:current_syntax")
 finish
endif

" A bunch of useful C keywords
syn match qfFileName "^[^|]*" nextgroup=qfSeparator
syn match qfSeparator "|" nextgroup=qfLineNr contained
syn match qfLineNr "[^|]*" contained contains=qfError,qfWarning
syn match qfError "error" contained
syn match qfWarning "warning" contained

" The default highlighting.
hi def link qfFileName Directory
hi def link qfLineNr LineNr
hi def link qfError Error
hi def link qfWarning Warning

let b:current_syntax = "qf"

" vim: ts=8
