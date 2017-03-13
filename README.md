# infinality

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with infinality](#setup)
    * [What infinality affects](#what-infinality-affects)
    * [Beginning with infinality](#beginning-with-infinality)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

The infinality module installs the Infinality font rendering packages from [ppa](https://launchpad.net/~no1wantdthisname/+archive/ubuntu/ppa) on Ubuntu.

## Setup

### What infinality affects

* apt configuration to include the Infinality ppa

### Beginning with infinality

To install the Infinality font rendering packages with default options:

`include infinality`

## Usage

The default infinality class installs the Infinality font rendering packages. To use default configuration:

`include infinality`

## Reference

### Classes

#### Public classes

* `infinality`: Installs Infinality font rendering packages

#### Private classes

* `infinality::install`: Handles the ppa setup and the Infinality packages

### Parameters

There are no parameters available in the `infinality` class.

## Limitations

This module has only been tested against Ubuntu 16.04.  As the Infinality packages affect desktop fonts, this module will only produce tangible results when used with a desktop variant of Ubuntu.

## Development

### Contributing

Before starting your work on this module, you should fork the project to your GitHub account. This allows you to freely experiment with your changes. When your changes are complete, submit a pull request. All pull requests will be reviewed and merged if they suit some general guidelines:

* Changes are located in a topic branch
* For new functionality, proper tests are written
* Changes should not solve certain problems on special environments
* Your change does not handle third party software for which dedicated Puppet modules exist
  * such as creating databases, installing webserver etc.
* Changes follow the recommended Puppet style guidelines from the [Puppet Language Style Guide](https://docs.puppet.com/puppet/latest/style_guide.html)

### Branches

Choosing a proper name for a branch helps us identify its purpose and possibly find an associated bug or feature. Generally a branch name should include a topic such as `bug` or `feature` followed by a description and an issue number if applicable. Branches should have only changes relevant to a specific issue.

```
git checkout -b bug/service-template-typo-1234
git checkout -b feature/config-handling-1235
```

### Running tests

This project contains tests for [rspec-puppet](http://rspec-puppet.com/) to verify functionality. For detailed information on using this tool, please see the relevant documentation.

#### Testing quickstart

```
gem install bundler
bundle install
rake spec
```
