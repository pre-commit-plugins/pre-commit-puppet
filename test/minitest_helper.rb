if
  RUBY_VERSION == "2.0.0" # check Gemfile
then
  require "coveralls"
  require "simplecov"

  SimpleCov.start do
    formatter SimpleCov::Formatter::MultiFormatter[
      SimpleCov::Formatter::HTMLFormatter,
      Coveralls::SimpleCov::Formatter,
    ]
    command_name "Spec Tests"
    add_filter "/test/"
  end

  Coveralls.noisy = true unless ENV['CI']
end

require 'minitest/autorun'
require "minitest/reporters"
require 'tmpdir'
require 'pluginator'

module PreCommit; module Helpers

  def fixture_file(filename)
    file_dir = File.expand_path('../files', __FILE__).sub("#{project_dir}/", "")
    File.join(file_dir, filename)
  end

  def project_dir
    File.expand_path("../../", __FILE__)
  end

end; end

class MiniTest::Unit::TestCase
  include PreCommit::Helpers
end

Dir['lib/**/*.rb'].each { |file| require "./#{file}" } # coverals trick for all files

Minitest::Reporters.use!
