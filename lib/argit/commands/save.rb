require 'git'

module Argit
  module Commands
    class Save
      def self.add_files
        repo = Git.open '.'
        repo.add '*.ardour'
        repo.commit('message')
      end
    end
  end
end

