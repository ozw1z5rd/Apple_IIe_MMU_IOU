find . -print -type d | grep \.vhdl$ | xargs -n 1 basename --suffix=.vhdl | grep _TB | xargs -n 1 ghdl -r --workdir=work --std=08 