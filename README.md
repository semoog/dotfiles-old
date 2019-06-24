<img src="http://icons.iconarchive.com/icons/danleech/simple/1024/slashdot-icon.png" alt="Dotfiles" width="250"/>

# Personal Dotfile Setup

## Dependencies:

- [git](https://git-scm.com/)

- [zsh / zsh-completions](https://www.zsh.org/)

- [oh-my-zsh](https://ohmyz.sh/)

- [Emacs](https://www.gnu.org/software/emacs/)

---

#### Mac Specific

- [Homebrew](https://brew.sh)

---

#### Windows Specific

- [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (I'm using Ubuntu 18.04 LTS)

- [Cmder](https://cmder.net/)

- [xfce4](https://www.xfce.org/)

- [VcXsrv](https://sourceforge.net/projects/vcxsrv/)

##### Guides:

- [WSL / Bash Setup](https://gingter.org/2016/11/16/running-windows-10-ubuntu-bash-in-cmder/)

- [ZSH Setup](https://gingter.org/2016/08/17/install-and-run-zsh-on-windows/)

- [Emacs on WSL 1](https://www.emacswiki.org/emacs/CategoryWSL)

- [Emacs on WSL 2](https://solarianprogrammer.com/2017/05/18/emacs-windows-subsystem-linux/)

- [Xfce 4](https://solarianprogrammer.com/2017/04/16/windows-susbsystem-for-linux-xfce-4/)

## Setup:

```
curl -Lks http://bit.do/semoog_dotfiles_setup | /bin/bash
```

[gist](https://gist.github.com/semoog/0fe4880781faa9eb2676b2455a619f87)

Use the `dotfiles` alias to manage this repo (i.e `dotfiles status / push / pull`)

---

## Customization

### Terminal

**Terminal**: [iTerm2](https://iterm2.com/), [Hyper](https://hyper.is/) or [Cmder](https://cmder.net/) on Windows

**Prompt**: [Spaceship](https://github.com/denysdovhan/spaceship-prompt/)

**Color Scheme**: some variation of tomorrow night (doom, [base16](https://github.com/chriskempson/base16)) or base16 eighties

**Font**: Fira Code or Source Code Pro
 
### Editor

**Editor**: [Spacemacs](http://spacemacs.org/) or [VSCode](https://code.visualstudio.com/)

**Color Scheme**: some variation of tomorrow night ([doom](https://github.com/hlissner/emacs-doom-themes), [base16](https://github.com/chriskempson/base16)) or base16 eighties

<img src="https://user-images.githubusercontent.com/1973922/59986494-4f822980-95f4-11e9-994b-dd57b2ea31a0.png" alt="Mac with Hyper" width="450"/>
<img src="https://user-images.githubusercontent.com/1973922/59986307-8441b100-95f3-11e9-828b-03222d0f076c.png" alt="WSL with Cmder" width="450"/>

---

#### Source

[Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)
