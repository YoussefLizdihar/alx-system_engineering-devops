#!/usr/bin/env ruby
# Search for Shcool

puts ARGV[0].scan(/hb(t{1,5})(?!t)n/).join
