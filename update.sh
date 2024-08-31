#!/usr/bin/env bash
if [ -f ./check ]; then
  git add --all
  git add index/
  git add .gitignore
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
