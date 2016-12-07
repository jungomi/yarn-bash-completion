# Yarn Bash Completion

Simple bash completion for [yarn][yarn].

## Completion features

- Subcommands
- Options / Flags
- `yarn run`: Scripts specified in `package.json` of the current directory.
- `yarn remove`: Installed dependencies listed in `package.json` of the current
  directory.
- `yarn global remove`: Globally installed packages, which are automatically
  listed in `$HOME/.config/yarn/global/package.json`.
- `yarn link` / `yarn unlink`: Packages that have been linked by invoking `yarn link` without
  any arguments in the directory of a module, which can then be used in another
  project by running `yarn link package-name`.
- `yarn why`: The packages in `node_modules` of the current directory.

## Installation

Clone this repository and add a line to your `.bashrc` to automatically source
the `yarn.bash-completion` file.

```sh
echo "source $(pwd)/yarn.bash-completion" >> ~/.bashrc
```

Or create a symbolic link in `/etc/bash_completion.d/`.

```sh
ln -s $(pwd)/yarn.bash-completion /etc/bash_completion.d/yarn.bash-completion
```

Alternatively you can simply download `yarn.bash_completion` without cloning the
repository.

```sh
curl -Lo /etc/bash_completion.d/yarn.bash-completion https://raw.githubusercontent.com/jungomi/yarn-bash-completion/master/yarn.bash-completion
```

[yarn]: https://github.com/yarnpkg/yarn
