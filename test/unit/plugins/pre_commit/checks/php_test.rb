require 'minitest_helper'
require 'plugins/pre_commit/checks/puppet'

describe PreCommit::Checks::Puppet do
  let(:check){ PreCommit::Checks::Puppet.new(nil, nil, []) }

  it "succeeds if nothing changed" do
    check.call([]).must_equal nil
  end

  it "succeeds if non-php file changed" do
    check.call([fixture_file('bad-puppet.js')]).must_equal nil
  end

  it "succeeds if only good changes" do
    check.call([fixture_file("good.pp")]).must_equal nil
  end

  it "fails if script fails" do
    check.call([fixture_file("bad.pp")]).must_match(/Parse error/i)
  end
end
