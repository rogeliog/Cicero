# encoding: UTF-8

# Benchmarks for paragraphs method prior to commit 0cee2f720ed98caea5f165f48a3d53eba727bb71

require_relative "../lib/cicero.rb"
require "benchmark"

T= 1000
r = []
max = 7
T.times {|_| r << ( 1 + rand( max ) ) }
R = r
r = nil

puts T.class


Benchmark.bm do |b|

  b.report( "orig " ) do
    T.times {|i| Cicero.paragraphs( R[i] ) }
  end
    
  b.report( 'new!' ) do
    T.times {|i| Cicero.paras( R[i] ) }
  end

end
