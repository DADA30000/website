#!/usr/bin/env bash
if [ -f ./check ]; then
  git add check ./*.js ./*.html ./*.md ./*.ico ./*.sh ./check ./static ./index/.theme --all
  git add .gitattributes
  echo "Enter commit name (enter to default)"
  read name
  if [ -n "$name" ]; then
    git commit -m "$name"
    git push -u
  else
    git commit -m "lil update"
    git push -u
  fi
else
  echo "change your working directory to dotfiles already"
fi
