#!/bin/bash

# Check if the argument is '-'
if [ "$1" = "-" ]; then
    # Checkout the previous branch
    git checkout -
elif git rev-parse --verify "$1" >/dev/null 2>&1; then
    # If the branch exists locally, check it out
    echo "✅ Branch \"$1\" exists. Checking it out..."
    git checkout "$1"
else
    # Check if a remote branch exists
    if git show-ref --verify --quiet refs/remotes/origin/"$1"; then
        echo "🔄 Remote branch \"$1\" found. Checking it out..."
        git checkout -t origin/"$1"
    else
        # Branch doesn't exist; ask to create it
        echo "⚠️  Branch \"$1\" does not exist."
        read -p "Do you want to create a new branch named \"$1\"? (y/n) " choice
        if [ "$choice" = "y" ]; then
            # Create and checkout the branch
            git checkout -b "$1"
        else
            # Abort
            echo "❌ Aborting."
        fi
    fi
fi

##########################################################################################
# git config --global -e
# [alias]
#     co = "!~/bin/git-co.sh"
##########################################################################################
