syn match   psmEQU "EQU"
syn match   psmREG "\s\+s[0-9a-fA-F]$"
syn match   psmREG "\s\+s[0-9a-fA-F]\s\+"
syn match   psmREG "\s\+s[0-9a-fA-F],"
syn match   psmFLG "[NZ|Z]"
syn match   psmNUM "0x[0-9a-fA-F]\+"
syn keyword psmIXN LOAD STORE CALL IN OUT FETCH COMP TEST JUMP RET ADD SUB
syn match   psmRNM ".*:"
syn match   psmCOM ";.*"

command -nargs=+ HiLink hi link <args>
HiLink psmEQU Special
HiLink psmREG Constant
HiLink psmFLG String
HiLink psmNUM Number
HiLink psmIXN Statement
HiLink psmRNM Label
HiLink psmCOM Comment
delcommand HiLink

let b:current_syntax = "psm"
" vim: ts=3
