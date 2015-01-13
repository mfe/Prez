#!/bin/bash
eval "$(pyenv init -)"
pyenv global system

. ../../live_term_lib

clear
print_title "Demo: pyenv basics"

tmp_ps1=PS1
export PS1=

# Part 1
print_ptitle "Part 1: list installable python versions"
prompt_and_exe "pyenv install --list"

# Part 2
print_ptitle "Part 2: check python version"
prompt_and_exe "pyenv versions" 
prompt_and_exe "pyenv version"
prompt_and_exe "pyenv which python"

# Part 3
print_ptitle "Part 3: global"
prompt_and_exe "pyenv version"
prompt_and_exe "pyenv global 2.6.8"
prompt_and_exe "pyenv version"
prompt_and_exe "pyenv global system"
prompt_and_exe "pyenv version"

# Part 4
print_ptitle "Part 4: local"
rm -rf test_local
prompt_and_exe "mkdir test_local"
prompt_and_exe "cd test_local"
prompt_and_exe "pyenv local 2.6.8"
prompt_and_exe "ls -la"
prompt_and_exe "cat .python-version"
prompt_and_exe "python --version"
prompt_and_exe "cd .."
prompt_and_exe "python --version"

echo ''
print_title "End of demo"

export PS1=tmp_ps1
