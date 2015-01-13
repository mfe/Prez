. ../../live_term_lib

clear
print_title "Demo: virtualenv"

tmp_ps1=PS1
export PS1=

rm -Rf test_env*

# Check current version
print_ptitle "Part 1: check current version"
prompt_and_exe "which python"
prompt_and_exe "python --version"
prompt_and_exe "pip freeze"

# Create a virtualenv
print_ptitle "Part 2: create a virtualenv"
prompt_and_exe "virtualenv test_env"
prompt_and_exe "ls"
prompt_and_exe "ls test_env"

# Activate
print_ptitle "Part 3: activate a virtualenv"
prompt_and_exe ". test_env/bin/activate"
prompt_and_exe "which python"
prompt_and_exe "python --version"
prompt_and_exe "pip freeze"
# Install a package
print_ptitle "Part 4: install a package"
prompt_and_exe "pip install nose"
prompt_and_exe "pip freeze"
# Deactivate
print_ptitle "Part 5: deactivate a package"
export PS1=
prompt_and_exe "deactivate"
prompt_and_exe "pip freeze"
# Create a python from another version
print_ptitle "Part 6: create a virtualenv from another python version"
prompt_and_exe "virtualenv -p /usr/bin/python3  test_env_py3"
prompt_and_exe ". test_env_py3/bin/activate"
prompt_and_exe "python --version"

echo ''
print_title "End of demo"

export PS1=tmp_ps1
