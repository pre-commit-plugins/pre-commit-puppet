# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pre-commit/puppet/version'

Gem::Specification.new do |s|
  s.name = "pre-commit-puppet"
  s.version = PreCommit::Puppet::VERSION
  s.authors = ["Andrew Berry", "Robin Bowes", "Josh Lubaway", "Michal Papis"]
  s.homepage = "http://github.com/pre-commit-plugins/pre-commit-puppet"
  s.license = "Apache 2.0"
  s.summary = "puppet plugin for jish/pre-commit"

  s.extra_rdoc_files = ["README.md"]
  s.files = Dir["lib/**/*"]

  s.metadata = {
    "plugins/pre_commit/checks/puppet.rb" => "1",
  }

  s.add_dependency("pre-commit")#, "~> 0.20")

  s.add_development_dependency("guard", "~> 2.0")
  s.add_development_dependency("guard-minitest", "~> 2.0")
  s.add_development_dependency("minitest", "~> 4.0")
  s.add_development_dependency("minitest-reporters", "~> 0")
  s.add_development_dependency("rake", "~> 10.0")
  s.add_development_dependency("puppet")
end
