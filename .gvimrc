" have a small-ish yet readable font:
if has("win32")
  set guifont=Inconsolata_for_Powerline:h12:cANSI
else
  if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
      "MAC STUFF HERE
    elseif s:uname == "Linux\n"
      set guifont=Inconsolata\ for\ Powerline\ 12
    endif
  endif
endif

set guioptions=agirLtmT
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,a:blinkon0
