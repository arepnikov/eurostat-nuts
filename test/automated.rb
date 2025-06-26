require_relative './test_init'

# Automatically load all test files
Dir.glob(File.join(__dir__, '**', '*_test.rb')).each do |file|
  require file
end
