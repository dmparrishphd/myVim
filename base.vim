"Vim script for remapping normal-mode function keys to line-numbering commands
"<Space> and - are used like leaders

"Color scheme
:colo murphy
		    

"Text width
:set tw=64

"Tabs
:set autoindent
:set tabstop=4
:set expandtab
:set softtabstop=0



"Line Numbering
:nn <Space>nn :set nu<Enter>
:nn <Space>nr :set rnu<Enter>
:nn <Space>no :set nonu<Enter>:set nornu<Enter>



"Rotate keys to put <Esc> is easy-to-reach position
:ino \ <Esc>
:ino <Esc> \



"Swap colon and semicolon
:nn ; :
:nn : ;

:cno ; :
:cno : ;

:ino ; :
:ino : ;



"NAVIGATION

"jump to first line of next paragraph
:nn <Space>] }}{j

"page-down and page-up
:nn f <C-F>
:nn F <C-B>

"WINDOWS
" mnemonic: 9 looks like q
:nn <F9> :q<Enter>
:nn <F10> :ene<Enter>

"reduce or enlarge window height
:nn = <C-W>-
:nn + <C-W>+

"jump down or up to next window
:nn <Space>j <C-W>j
:nn <Space>k <C-W>k

"new window, edit
:nn <Space>w :sp<Enter>:enew<Enter>
:nn <Space>W :sp<Enter><CTRL-W><CTRL-J>:enew<Enter>

"split
:nn <Space>s :sp<Enter>


"TABS

:nn <Space>t :tabnew<Enter>

"go to next tab
:nn t gt


"Find ASCII control characters, non-ASCII bytes
:nn -noa /[\x00-\x19]<Enter>
:nn -noA /[\x7f-\xff]<Enter>

"formatting
:nn <Space>q gq<Enter>
"formatting: remove excess spaces
:nn <Space>- :s/[ ][ ]\+/ /g<Enter>
"formatting: replace solidus with backslash
:nn -/ :s-\\-\/-g<Enter>

"ruler
:nn -r O<Home>#________________________________________________________________........::::::::*<Esc>j0
