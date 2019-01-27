#!/bin/bash

OMZ_DIR=/usr/share/oh-my-zsh
PL_DIR=/custom/plugins
TH_DIR=/custom/themes

REPOS=(
  ""
  "${PL_DIR}/zsh-autosuggestions"
  "${PL_DIR}/zsh-completions"
  "${PL_DIR}/zsh-syntax-highlighting"
  "${TH_DIR}/spaceship-prompt"
)

echo ""
echo "Getting latest for" ${#REPOS[@]} "repositories using pull --rebase"

for REPO in "${REPOS[@]}"
do
  echo ""
  if [[ $REPO = "" ]]
  then echo "****** Getting latest for oh-my-zsh ******"
  else echo "****** Getting latest for" ${REPO} "******"
  fi

  cd "${OMZ_DIR}${REPO}"
  git pull --rebase
  echo "******************************************"
done
