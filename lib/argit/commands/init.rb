require 'fileutils'

module Argit
  module Commands
    class Init
      def self.create_repository
         FileUtils.mkdir '.git'
      end
    end
  end
end
