" Vim syntax file
" Language: Mojo
" Maintainer: Zheyuan Chen <czheous@gmail.com>
" Latest Revision: 10 May 2023

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" include python syntax
runtime syntax/python.vim

syn keyword mojoKeywords let var
syn keyword mojoKeywords struct fn nextgroup=mojoName skipwhite
syn match mojoName '\h\w*' display contained
syn match mojoRefName '\h\w*&' display contains=mojoName
syn region mojoIndexDialect start="`" end="`" display

hi def link mojoKeywords Keyword
hi def link mojoRefName Identifier
hi def link mojoIndexDialect Special

" vim:set sw=2 sts=2 ts=8 noet:
