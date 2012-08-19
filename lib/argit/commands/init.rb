require 'git'

module Argit
  module Commands
    class Init
      def self.create_repository
        Git.init
      end
    end
  end
end
