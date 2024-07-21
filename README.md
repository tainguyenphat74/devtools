# DevTools

Welcome to Phat-Tai Nguyen's DevTools repository. This project contains a set of tools to enhance your development workflow.

## Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Running the Bash Script](#running-the-bash-script)
  - [Linux and macOS](#linux-and-macos)
  - [Windows](#windows)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository includes a bash script to automate the process of adding, committing, and pushing changes to a Git repository.

## Prerequisites

- Git must be installed on your system.
- Bash shell (Linux and macOS) or Git Bash (Windows) should be available.

## Installation

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/tainguyenphat74/devtools.git
    ```

2. Navigate to the cloned directory:

    ```bash
    cd devtools
    ```

## Running the Bash Script
The bash script `git-add-commit-push-all-in-one.sh` simplifies the process of adding, committing, and pushing changes to your Git repository.

### Linux and macOS
1. Open your terminal.

2. Navigate to the directory where the script is located:

    ```bash
    cd path/to/devtools
    ```

3. Ensure the script has execution permissions:

    ```bash
    chmod +x git-add-commit-push-all-in-one.sh
    ```

4. Run the script:

    ```bash
    ./git-add-commit-push-all-in-one.sh
    ```

### Windows

1. Open Git Bash.

2. Navigate to the directory where the script is located:

    ```bash
    cd path/to/devtools
    ```

3. Ensure the script has execution permissions:

    ```bash
    chmod +x git-add-commit-push-all-in-one.sh
    ```

4. Run the script:

    ```bash
    ./git-add-commit-push-all-in-one.sh
    ```

## Usage

To use the script, run it with the desired `commit type` and `message`, it will automatically add, commit, and push to the remote branch. Here are some examples:

```bash
# When you type this command, it equivalent to: git add -A && git commit -m "✨ feat: implement new feature" && git push
git feat "implement new feature"
```
Similar example:
```bash
git fix "fix bug"                       # git commit -m "🐛 fix: fix bug"
git docs "update documentation"         # git commit -m "📚 docs: update documentation"
git style "format code"                 # git commit -m "💄 style: format code"
git refactor "refactor code"            # git commit -m "♻️ refactor: refactor code"
git perf "improve performance"          # git commit -m "⚡ perf: improve performance"
git test "add tests"                    # git commit -m "✅ tests: add tests"
git chore "update dependencies"         # git commit -m "🔧 chore: update dependencies"
git build "run build"                   # git commit -m "🛠️ build: run build"
git ci "update CI configuration"        # git commit -m "👷 ci: update CI configuration"
```

## Contributing
We welcome contributions! Please fork the repository and create a pull request with your changes. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
