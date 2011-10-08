# encoding: UTF-8

require "rspec"
Spec_dir = File.expand_path( File.dirname __FILE__ )
require_relative '../lib/cicero/cicero_text.rb'

require_relative '../lib/cicero.rb' # and any other gems you need

Dir[ File.join( Spec_dir, "/support/**/*.rb")].each do |f| 
  puts "requiring #{f}"
  require f
end

RSpec.configure do |config|
end
