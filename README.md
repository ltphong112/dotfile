# Dotfiles for macOS

Welcome to my dotfiles repository! This collection of configuration files is tailored for macOS, enhancing your terminal experience with a set of powerful tools and a beautiful theme. These dotfiles are primarily configured to work with the **TokyoNight** theme, providing a consistent and visually appealing setup.

## Requirements

Before you get started, make sure you have the following packages installed:

- **Homebrew**: The missing package manager for macOS.
- **[Starship](httpsoss-shell prompt that is fast, customizable, and minimal.
- **Neovim**: A hyperextensible Vim-based text editor.
- **lsd**: A modern replacement for `ls` with a lot of features.
- **xplr**: A hackable, minimal, fast TUI file explorer.
- **[tokyonight](https://github.com/folke/tokyontten in Lua.
- **WezTerm**: A GPU-accelerated cross-platform terminal emulator and multiplexer.
- **[zoxide](https://github.com/ajeetdsyour terminal.
- **lazygit**: A simple terminal UI for git commands.

## Installation

1. **Install Homebrew** (if you don't have it already):
    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

2. **Clone the repository**:
    ```sh
    git clone https://github.com/ltphong112/dotfile.git
    cd dotfile
    ```

3. **Install the required packages** using Homebrew:
    ```sh
    brew install starship neovim lsd xplr zoxide lazygit
    ```

4. **Copy the configuration files** to your home directory:
    ```sh
    cp -r .config/* ~/.config/
    ```

5. **Set up WezTerm**:
    ```sh
    cp wezterm.lua ~/.wezterm.lua
    ```

6. **Copy the Zsh configuration file**:
    ```sh
    cp .zshrc ~/.zshrc
    ```

## Usage

- **Starship**: Customize your prompt by editing the `~/.config/starship.toml` file.
- **Neovim**: Open Neovim and enjoy the TokyoNight theme with additional configurations. Note that the Neovim configuration used is from **LazyVim**.
- **lsd**: Use `lsd` instead of `ls` for a modern file listing experience.
- **xplr**: Launch `xplr` for a powerful file explorer.
- **WezTerm**: Start WezTerm to experience a fast and modern terminal emulator.
- **Zsh**: Use the customized `.zshrc` for an enhanced shell experience.
- **zoxide**: Navigate your directories more efficiently with `zoxide`.
- **lazygit**: Manage your git repositories with a simple terminal UI.

## Contributing

Feel free to fork this repository, make changes, and submit pull requests. Any improvements or suggestions are welcome!

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---
