# Dev Files

Keep your bash profile, notes, and config backed up and version controlled with this template!

This is a stripped down version of a personal repo I use to store local config files, diagrams, notes, and scripts. I also use my own local ersion as a place to generally experiment with new packages, setup, config, etc.

## Setup

### Sourcing the bash profile

After installing this repo locally, source your .bash_profile with the following:

```
LOCAL_ROOT=~/[[your local root]] # Local root is used by multiple commands in the bash profile
source /Volumes/workplace/notes/src/config/.bash_profile # or wherever you are sourcing this repo
```

This allows usage on multiple personal machines.

### How it works:

I like to use the same bash profile on all my devices. In order for directory-specific aliases to work, I set the local root on each machine. This is then referenced in the .bash_profile.

## Other things I store that are not listed here:

- Notes (see notes scripts / aliases in bash profile)
- Google Chrome bookmarks
- VS Code workspace config
- Docs I'm writing
- Drawio files
- Interview templates
- TODOs
