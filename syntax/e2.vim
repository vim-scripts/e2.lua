" Vim syntax file
" Language:     GMod Wire Expression2
" Maintainer:   Sam Hanes <sam@maltera.com>
" Last Change:  2010 Sep 23

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" E2 is case-sensitive
syntax case match

" Constants
syntax region e2String start=/"/ end=/"/
syntax match  e2Number "\d\+"

" Types
syntax keyword e2Type number normal string complex
syntax keyword e2Type vector2 vector vector4 angle quaternion
syntax keyword e2Type matrix2 matrix matrix4
syntax keyword e2Type entity bone
syntax keyword e2Type array table
syntax keyword e2Type wirelink ranger

" Conditionals
syntax keyword e2Conditional if else elseif

" Looping Constructs
syntax keyword e2Loop       while for foreach
syntax keyword e2Statement  continue break

" Functions
syntax match e2Function "[a-zA-Z_]\+(\@="

" Variables
syntax match e2Variable "[A-Z][a-zA-Z_]*"

" Comments
syntax match e2Comment "#.*$"

" At-directives
syntax match e2AtDir        "^@name "       nextgroup=e2AtDirString
syntax match e2AtDir        "^@model "      nextgroup=e2AtDirString
syntax match e2AtDir        "^@inputs "
syntax match e2AtDir        "^@outputs "
syntax match e2AtDir        "^@trigger "
syntax match e2AtDir        "^@persist "
syntax match e2AtDirString  "[^\s].*$" contained

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link e2String            String
hi def link e2Number            Number
hi def link e2Type              Type
hi def link e2Conditional       Conditional
hi def link e2Loop              Repeat
hi def link e2Statement         Keyword
hi def link e2Function          Function
hi def link e2Variable          Identifier
hi def link e2Comment           Comment
hi def link e2AtDir             PreProc
hi def link e2AtDirString       String

let b:current_syntax = "e2"
