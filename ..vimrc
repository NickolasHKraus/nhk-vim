"                           _     _              _
"                     _ __ | |__ | | __   __   _(_)_ __ ___
"                    | '_ \| '_ \| |/ /___\ \ / / | '_ ` _ \
"                    | | | | | | |   <_____\ V /| | | | | | |
"                    |_| |_|_| |_|_|\_\     \_/ |_|_| |_| |_|
"
"              This is the personal .vimrc file of Nickolas Kraus.

" basic {
  " Vim can detect the type of file that is edited. This is done by checking
  " the file name and sometimes by inspecting the contents of the file for
  " specific text.

  " enable file type detection
  filetype on
  " enable loading the plugin file for specific file types
  filetype plugin on
  " enable loading the indent file for specific file types
  filetype indent on

  " Syntax highlighting enables Vim to show parts of the text in another font
  " or color.

  " enable syntax highlighting
  syntax on

  " specify the character encoding
  scriptencoding utf-8

  " enable spell and specify to check for US English
  set spell spelllang=en_us

  " set the cursor to the first line when editing a Git commit message instead
  " of reverting it to the last position in the buffer
	au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

  " If you write to an existing file (but do not append) while the 'backup'
  " option is on, a backup of the original file is made.
  set backup

  " set backup file directory
  set backupdir ~/.vim/backupdir

  " When unloading a buffer Vim normally destroys the tree of undos created for
  " that buffer. By setting the 'undofile' option, Vim will automatically save
  " your undo history when you write a file and restore undo history when you
  " edit the file again. Undo files are normally saved in the same directory
  " as the file. This can be changed with the 'undodir' option.
  set undofile

  " set undo file directory
  set undodir ~/.vim/undodir

  " set maximum number of changes that can be undone
  set undolevels=1000

  " set maximum number of lines to save for undo when reloading the buffer
  set undoreload=10000

" }

" ui {

" }

" formatting {

" }


" remap {

" }


" source ~/.vimrc.plugins {
  if filereadable(expand("~/.vimrc.plugins"))
      source ~/.vimrc.plugins
  endif
" }
