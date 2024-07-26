
# Dotfile Configuration for Debian Linux

This repository contains my dotfile configurations for my Debian-based Linux machine. Dotfiles are plain text configuration files that are used to customize the Unix-based environment. This repository includes configurations for various tools and applications that I use on my Debian system.

## Repository Structure

Here is an overview of the repository structure:

```
.
├── .bashrc
├── .vimrc
├── .gitconfig
├── .tmux.conf
├── .config/
│   ├── nvim/
│   │   └── init.vim
│   └── ...
└── README.md
```

- **.bashrc**: Configuration for the Bash shell.
- **.vimrc**: Configuration for Vim editor.
- **.gitconfig**: Configuration for Git.
- **.tmux.conf**: Configuration for Tmux terminal multiplexer.
- **.config/**: Directory containing configurations for various applications like Neovim.

## Installation

To use these configurations on your Debian machine, follow these steps:

1. Clone this repository to your home directory:

```sh
git clone https://github.com/bryaburg/dotfiles.git ~/dotfiles
```

2. Backup your existing dotfiles (optional but recommended):

```sh
cp ~/.bashrc ~/.bashrc.bak
cp ~/.vimrc ~/.vimrc.bak
cp ~/.gitconfig ~/.gitconfig.bak
cp ~/.tmux.conf ~/.tmux.conf.bak
# Backup any other files as needed
```

3. Create symbolic links to the dotfiles in this repository:

```sh
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
# Link any other files as needed
```

4. Source the new Bash configuration:

```sh
source ~/.bashrc
```

## Customization

Feel free to customize these configurations to suit your preferences. Here are some of the key settings included:

### .bashrc

- Aliases for common commands
- Prompt customization
- Environment variables

### .vimrc

- Syntax highlighting
- Line numbers
- Custom key mappings

### .gitconfig

- User information
- Aliases for Git commands
- Custom Git settings

### .tmux.conf

- Custom key bindings
- Appearance settings
- Performance optimizations

## Contributing

If you have any improvements or suggestions, feel free to open a pull request or submit an issue.

## License

This repository is licensed under the MIT License. See the LICENSE file for more details.

---

These configurations are tailored to enhance productivity and streamline the development workflow on a Debian-based system. Enjoy your customized Linux environment!
