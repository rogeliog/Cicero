# encoding: UTF-8

RSpec::Matchers.define :end_with do |pattern|
  match do |actual|
    actual.end_with? pattern
  end
end
