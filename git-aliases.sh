#!/bin/bash
# Aliases uteis para o dia a dia com Git
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.lg "log --oneline --graph --decorate --all"
git config --global alias.undo "reset HEAD~1 --mixed"
git config --global alias.unstage "reset HEAD --"
echo "Aliases configurados com sucesso!"
