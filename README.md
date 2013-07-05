Nik Martin's dotfiles
========

My dotfiles collection

Contains various dotfiles that I have customized to suit my tastes. It also conatins a script that 
symlinks all the files after pulling them to a new computer via git. The files are structured such 
that 'at rest', the files are not hidden.  Once makesymlinks.sh is run, symlinks that represent 
the files as their applications expect them at runtime are created. The original files stay
in ~/dotfiles.

One issue with using git to store dotfiles is I also use Tim Pope's excellent (I admit it , even 
though he can be a tool when it comes to questions about why his software does what it does) Pathogen
(https://github.com/tpope/vim-pathogen) to manage Vim's runtime path. That frequently means you 
install plugins from the github respository of the original author. I encourge you to install the 
author's version from source where possible.  Git now has a subtree merge feature that I'm not 100% 
confident accomplishes the goal I'm trying to achieve. With that in mind:

Copyright (c) 2013 Nik Martin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
associated documentation files (the "Software"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do 
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
 portions of the Software.

The Software shall be used for Good, not Evil.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT 
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
