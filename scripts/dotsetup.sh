dir=~/.files
files=".zshrc .vimrc .i3/config .Xresources .ssh/config .tmux.conf .config/nvim/init.vim"


cd $dir

for file in $files; do
	mkdir -p ~/"$(dirname "$file")"
	ln -sfn $dir/$file ~/$file
done
