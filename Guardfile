
guard :minitest, test_file_patterns: %w[*_test.rb], all_on_start: false do

  watch(%r{^lib/(.*)\.rb}) { |m| "test/unit/#{m[1]}_test.rb" }

  watch(%r{^test/(.*)_test\.rb})

  watch(%r{^test/files/.*}) { "test/unit/plugins/pre_commit/checks" }

  watch(%r{^test/minitest_helper\.rb}) { 'test' }

end
