require 'fileutils'
require 'git'

Given /^the project is initialized with argit init$/ do
  `argit init`
end

Given /^I have an empty Ardour project file called "(.*?)"$/ do |filename|
  FileUtils.touch File.join(ENV['HOME'], filename)
end

Then /^the git repository contains "(.*?)" file$/ do |filename|
  repository = Git.open('.')
  repository.ls_files[filename].should_not == nil
end

