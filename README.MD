# ADHDE zsh settings

Zsh settings for [Attention Deficit Hyperactivity Desktop Environment](https://github.com/Senderman/adhde)

# Features
## Completion
- completion menu
- autocorrection
- show completion sources names from compsys
- show processes names on `kill`` command completion
- colorful file completion
- pushd directory stack as cd options (cd -1, cd -2) completion
- ignore case, hyphens and underscores during completion

## History
- no duplicates in history
- show command with history expansion  before running it
- HISTSIZE=50000, SAVEHIST=10000 (to override this, specify your values after sourcing this plugin in .zshrc)
- never execute command after pasting it into terminal if it contains \n (safe pasting)

## ZSH options
- enable pushd directory stack
- type directory name to change dir without cd
- treat `#` as start of the comment if not escaped
- colored man pages
- `^X^E` to edit the current command line in your `$EDITOR` 
- `Ctrl+Left/Right` to move to the prev/next word

## Terminal emulator support
- Set emulator's tab and title name to the name of CWD or the running process
- Send CWD to emulator via OSC-7

# Installation

## Plain zsh

Clone this repository to any location on your PC, then add to your `.zshrc`:

```bash
source /path/to/repo/adhde-zsh-settings.plugin.zsh
autoload -Uz compinit
compinit
```

## With [Antidote](https://getantidote.github.io/)

Add the following line to your plugins file:

```
Senderman/adhde-zsh-settings
```

Load and call compinit **after** loading your plugins (after you've done modifying fpath): 

```bash
source /plugins/file.zsh
autoload -Uz compinit
compinit
```

# Misc

Inspired by:
- https://github.com/ohmyzsh/ohmyzsh/blob/master/lib
- https://thevaluable.dev/zsh-completion-guide-examples
- https://codeberg.org/dnkl/foot/wiki#user-content-spawning-

