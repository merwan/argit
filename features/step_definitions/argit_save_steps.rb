require 'aruba/process'

Then /^the git repository should contain "(.+)"$/ do |filename|
  output = `git ls-files`
  output.include? filename
end

