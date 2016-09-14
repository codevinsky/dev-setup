#!/usr/bin/env bash


# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Atom & Homebrew,
# Install if we don't have it
if test ! $(which atom); then
  echo "Atom not found. Please install Atom and try again"
fi
# Install Atom Packages

# 1. Syntaxes
apm install language-babel language-dotfiles
# 2. Linters
apm install linter linter-clang linter-eslint linter-processing linter-jsonlint linter-gcc

# 3. Build Systems
apm install build build-make build-cmake build-tools build-tools-make atom-build-grunt xcode-build

# 4. IDE Enhancements
apm install advanced-open-file code-peek editorconfig fonts merge-conflicts atom-ternjs  regex-railroad-diagram
apm install git-plus

# 5. Themes
apm install seti-icons seti-syntax seti-ui
