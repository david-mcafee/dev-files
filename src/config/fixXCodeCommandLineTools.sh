#!/usr/bin/env bash

# remove old CommandLineTools
# to force upgrade
sudo rm -rf /Library/Developer/CommandLineTools

# install latest
sudo xcode-select --install