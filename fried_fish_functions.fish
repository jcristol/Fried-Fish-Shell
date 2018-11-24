# create a new fish function here
# once you have added your function run save_functions 
# save_functions saves all the functions to your global config

function save_functions
  cat fried_fish_functions.fish | fish
end
funcsave save_functions

function edit_functions
  vim ~/.config/fried_fish_functions.fish
end
funcsave edit_functions

function ls
  exa $argv
end
funcsave ls

function cat
  bat $argv
end
funcsave cat

function gss
  git status -s
end
funcsave gss

function gc
  git commit $argv
end
funcsave gc

function ga
  git add $argv
end
funcsave ga

function gco
  git checkout $argv
end
funcsave gco

function gb
  git branch $argv
end
funcsave gb

function vim
  nvim $argv
end
funcsave vim

function nerd
  npm run $argv
end
funcsave nerd

function fish_greeting
  fish_logo
end
funcsave fish_greeting