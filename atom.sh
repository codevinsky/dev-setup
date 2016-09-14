#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Atom & Homebrew,
# Install if we don't have it
if test ! $(which atom); then
  if test ! $(which brew); then
    echo "Error: Neither Atom nor Homebrew were found. Please install Atom or Homebrew first"
    exit(1)
  fi
  echo "Installing Atom..."
  brew install atom
fi


# Install Atom Packages

# 1. Syntaxes
apm install language-babel language-dotfiles
# 2. Linters
apm install linter linter-clang linter-eslint linter-processing linter-jsonlint linter-gcc

# 3. Build Systems
apm install build build-make build-cmake build-tools build-tools-make build-xctool atom-build-grunt  xcode-build

#4. IDE Enhancements
apm install advanced-open-file code-peek editorconfig fonts merge-conflicts atom-ternjs  regex-railroad-diagram
