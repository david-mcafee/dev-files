#!/bin/bash -e

read -p "Is this the correct repo? (y/n) " repoCheck

if test "$repoCheck" = "y"
then
    echo ""
    echo "Staging..."
    git add -A
    echo ""
    echo "Staging complete"

    read -p "Enter commit message: " commitMessage

    echo ""
    echo "Committing staged files"
    git commit -m "$commitMessage"

    echo ""
    read -p "Create PR? (y/n) " prCheck

    if test "$prCheck" = "y"
    then
        echo ""
        echo "Create PR..."
        cr
    else
        echo ""
        echo "Not creating PR..."
    fi
else
    echo "Script aborted"
    exit
fi