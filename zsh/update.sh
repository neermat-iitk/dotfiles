time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

echo "Updating configuration"
(cd ~/dotfiles && git pull && git submodule update --init --recursive)


