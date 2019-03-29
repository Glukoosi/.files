dir=~/.files
olddir=~/.files_old
files=".zshrc .vimrc .i3 .Xresources .ssh/config .tmux.conf"

mkdir -p $olddir

cd $dir

for file in $files; do
	mv ~/$file $olddir/
	ln -s $dir/$file ~/$file
done
