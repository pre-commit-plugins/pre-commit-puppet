require 'pre-commit/checks/plugin'

module PreCommit
  module Checks
    class Puppet < Plugin

      def call(staged_files)
        staged_files = staged_files.grep /\.(pp)$/
        return if staged_files.empty?

        errors = staged_files.map { |file| run_check(file) }.compact
        return if errors.empty?

        errors.join("\n")
      end

      def run_check(file)
        # We force puppet to display errors otherwise they will likely end up in the
        # error_log and not in stdout.
        result = `puppet parser validate #{file} 2>&1`
        # If PHP exited non-zero then there was a parse error.
        result.strip unless $? == 0
      end

      def self.description
        "Detects puppet errors."
      end

    end
  end
end
