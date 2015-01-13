eval "$(pyenv init -)"
pyenv global system

. ../../live_term_lib

tmp_ps1=PS1
export PS1=

clear
print_title "Demo: pyenv virtualenv"

# Part 1
print_ptitle "Part 1: create a new virtual env"
prompt_and_exe "pyenv versions"
prompt_and_exe "pyenv virtualenv 2.6.8 my_env_2.6.8"
prompt_and_exe "pyenv versions"

# Part 2
print_ptitle "Part 2: use the new virtual env"
prompt_and_exe "pyenv version"
prompt_and_exe "pyenv activate my_env_2.6.8"
prompt_and_exe "pyenv version"
prompt_and_exe "pyenv which python"
export PS1=
prompt_and_exe "pyenv deactivate"

prompt_and_exe "pyenv which python"

# Part 3
print_ptitle "Part 3: uninstall"
prompt_and_exe "pyenv uninstall -f my_env_2.6.8"
prompt_and_exe "pyenv versions"

echo ''
print_title "End of demo"

export PS1=tmp_ps1
