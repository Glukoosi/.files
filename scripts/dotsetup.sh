dir=~/dotfiles
olddir=~/dotfiles_old
files=".zshrc .vimrc .i3 .Xresources .ssh/config"

mkdir -p $olddir

cd $dir

for file in $files; do
	mv ~/$file ~/dotfiles_old/
	ln -s $dir/$file ~/$file
done
