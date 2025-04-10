# Dotfiles for macOS

Welcome to my dotfiles repository! This collection of configuration files is tailored for macOS, enhancing your terminal experience with a set of powerful tools and a beautiful theme.

## Requirements

Before you get started, make sure you have the following packages installed:

- **Homebrew**: The missing package manager for macOS.
- **Starship**: A cross-shell prompt that is fast, customizable, and minimal.
- **Neovim**: A hyperextensible Vim-based text editor.
- **lsd**: A modern replacement for `ls` with a lot of features.
- **xplr**: A hackable, minimal, fast TUI file explorer.
- **tokyonight**: A clean, dark Neovim theme written in Lua.
- **WezTerm**: A GPU-accelerated cross-platform terminal emulator and multiplexer.

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
    brew install starship neovim lsd xplr
    ```

4. **Copy the configuration files** to your home directory:
    ```sh
    cp -r .config/* ~/.config/
    ```

5. **Set up WezTerm**:
    ```sh
    cp wezterm.lua ~/.wezterm.lua
    ```

## Usage

- **Starship**: Customize your prompt by editing the `~/.config/starship.toml` file.
- **Neovim**: Open Neovim and enjoy the TokyoNight theme with additional configurations.
- **lsd**: Use `lsd` instead of `ls` for a modern file listing experience.
- **xplr**: Launch `xplr` for a powerful file explorer.
- **WezTerm**: Start WezTerm to experience a fast and modern terminal emulator.

## Contributing

Feel free to fork this repository, make changes, and submit pull requests. Any improvements or suggestions are welcome!

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

Happy coding! 🚀

