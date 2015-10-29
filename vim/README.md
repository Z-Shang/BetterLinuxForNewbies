Vim configuration files
=======================

To use, `cd` into the provider you like and run:

```sh
[ -d ~/.vim ] && mv ~/.vim ~/.vim.bak."$(date -u +%s)"
mv ~/.vimrc ~/.vimrc.bak."$(date -u +%s)"
mkdir -p ~/.vim
for vimfile in *; do
	case "$vimfile" in
		vimrc|*.md)	continue;;
	esac
	cp -a -- "$vimfile" ~/.vim
done
mv "vimrc" ~/.vimrc
```

File description
----------------

The `lilydjwg` dir contains her own `vimrc`. The `phoenixlzx` version contains
his own.

The `lily_vimrc.phoenixlzx` is a stripped-down version of lilydjwg's vimrc, and
it depends on ctags, cscope and vim-neocomplcache.