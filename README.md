# Node Dep Detector

Node Dep Detector is a command line tool that helps you identify unused dependencies in your Node.js projects. Simply run the command `node-dep-detector` in your project directory to get a list of all dependencies that are installed but not being used.

## Installation

You can install Node Dep Detector using [Homebrew](https://brew.sh/) on macOS or Linux:

$ brew tap <your-tap>
$ brew install node-dep-detector

Alternatively, you can download the source code and build it yourself:

$ git clone <path-to-tarball>
$ cd node-dep-detector
$ npm install
$ npm run build
$ npm link

## Usage

To use Node Dep Detector, simply navigate to your project directory and run the command:

$ node-dep-detector

This will print out a list of all dependencies that are installed but not being used in your project. If you want to remove these dependencies, you can use either `npm` or `yarn`:

$ npm uninstall <package-name> # remove a single package
$ npm prune # remove all unused packages
$ yarn remove <package-name> # remove a single package
$ yarn autoremove # remove all unused packages

## Contributing

Contributions to Node Dep Detector are welcome! To contribute, please fork the repository and submit a pull request. Please make sure to follow the [Code of Conduct](CODE_OF_CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md).

## License

Node Dep Detector is licensed under the [MIT License](LICENSE).
