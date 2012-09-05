require 'webmock/rspec'
require 'vcr'
require 'toppr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/toppr_cassettes'
  c.hook_into :webmock
end

require File.expand_path('../../lib/toppr.rb', __FILE__)