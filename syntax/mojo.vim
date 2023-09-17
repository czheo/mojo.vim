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

syn keyword mojoKeywords let var inout owned borrowed alias raises
syn keyword mojoBuiltins __mlir_attr __mlir_op __mlir_type put_new_line print_no_newline rebind len ord chr atol isdigit debug_assert constrained
syn keyword mojoKeywords struct fn nextgroup=mojoName skipwhite
syn match mojoName '\h\w*' display contained
syn match mojoRefName '\h\w*&' display contains=mojoName
syn region mojoDialect start="`" end="`" display

hi def link mojoKeywords Keyword
hi def link mojoRefName Identifier
hi def link mojoDialect Special
hi def link mojoBuiltins Keyword

" vim:set sw=2 sts=2 ts=8 noet:
