Nik Martin's dotfiles
=====================

My dotfiles collection
----------------------

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

