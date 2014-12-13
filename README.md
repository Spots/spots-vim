# Spots's vim environment

Yeah, uh, it's vim and stuff.

## Installing if you have no other previous vim stuff.
1. cd to your home directory:

       ```cd ~```
2. git clone this repo as your .vim folder:

       ```git clone https://github.com/Spots/spots-vim.git ~/.vim``` 
3. install vundle:

       ```git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim``` 
4. symlink the vimrc file in it to your .vimrc:

       ```ln -s ~/.vim/vimrc ~/.vimrc```
5. install the plugins(you will get an error about railscasts, just press enter):

       ```vim +PluginInstall +qall```
6. Done!

## Included Bundles

* Vundle for managing the bundles
* NERDTree for dir browsing
* railscasts theme cause it's easy on my eyes
* vim-indent-guides shows those pesky indent trees
* YAIFA to automanage indent styles
* vim-bufferline to show open buffers in the status line
* vim-bbye to make closing buffers easier. mapped to \q
* vim-rooter If the file is in a version controlled folder, move NERDTree to its root.
* vim-fugitive Git inside of vim
* vim-ruby Ruby syntax in vim

##Font
I like the bitstream_vera_mono font that Railscasts uses. I included the font in the fonts/ folder included in the repo. Install it however appropriate for your OS and then configure your terminal app to use that font. 

##More
I dont do anything specialized with vim really. Just edditing random files, Ansible playbooks, some RoR stuff. If you're more a javascript guy, check out @jameslai here on github for his vim setup for something more advanced
