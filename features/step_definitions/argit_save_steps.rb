require 'aruba/process'

Then /^the git repository should contain "(.+)"$/ do |filename|
  cmd = 'git ls-files'
  process = Process.new(cmd, 3, 0.1)
  process.run!.output(@aruba_keep_ansi).should include filename
end

