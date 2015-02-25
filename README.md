puppet plugin for https://github.com/jish/pre-commit

[![Current version](https://badge.fury.io/rb/pre-commit-puppet.svg)](https://rubygems.org/gems/pre-commit-puppet)
[![Code Climate](https://img.shields.io/codeclimate/github/pre-commit-plugins/pre-commit-puppet.svg)](https://codeclimate.com/github/pre-commit-plugins/pre-commit-puppet)
[![Coverage Status](https://img.shields.io/coveralls/pre-commit-plugins/pre-commit-puppet/master.svg)](https://coveralls.io/r/pre-commit-plugins/pre-commit-puppet?branch=master)
[![Build status](https://travis-ci.org/pre-commit-plugins/pre-commit-puppet.svg?branch=master)](https://travis-ci.org/pre-commit-plugins/pre-commit-puppet)
[![Dependency Status](https://gemnasium.com/pre-commit-plugins/pre-commit-puppet.png)](https://gemnasium.com/pre-commit-plugins/pre-commit-puppet)
[![Documentation](https://img.shields.io/badge/yard-docs-blue.svg)](http://rubydoc.info/gems/pre-commit-puppet/frames)

## Installation

Install the plugin

    $ gem install pre-commit-puppet

### Enable as errors

Use the pre-commit command to enable the plugin

    # In your git repo
    $ pre-commit enable yaml checks puppet

This creates a `config/pre_commit.yml` configuratiuon file which will
inform `pre-commit` to use `pre-commit-php` plugin for this project.

### Enable as warnings

Use the pre-commit command to enable the plugin

    # In your git repo
    $ pre-commit enable yaml warnings puppet

## [Contributing](CONTRIBUTING.md)
