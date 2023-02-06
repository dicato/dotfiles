#!/usr/bin/env python 

# Basic Imports
import os
import sys

# Global - add files you want to ignore in the current directory
IGNORED_FILES = [".gitignore", "bootstrap.py", "README.md", "LICENSE"]

if __name__ == "__main__":
    """
    Run this out of the .dotfiles directory to symlink the appropriate
    files into your home directory
    """

    currentDirectory = os.getcwd()
    home = os.getenv("HOME")

    if not currentDirectory.endswith("dotfiles"):
        print("Are you running this outside of the dotfiles directory?")
        sys.exit(1)

    else:
        dotfiles  = os.listdir(currentDirectory)

        for f in dotfiles:
            if f.endswith("~") or os.path.isdir(f) or (f in IGNORED_FILES):
                print("Ignoring temp file or directory: {}".format(f))
                continue
            
            elif f.startswith("."):
                original = currentDirectory + "/" + f
                homeFile = home + "/" + f
                print("Linking: {} --> {}".format(original, homeFile))
                os.system("ln -si {} {}".format(original, homeFile))
            else:
                print("We encountered some weird file and are ignoring it.")

    print("Done linking.")
