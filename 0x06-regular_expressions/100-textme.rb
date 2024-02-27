#!/usr/bin/env ruby
# Search for Shcool

puts ARGV[0].scan(/(?<=from:|to:|flags:).+?(?=\])/).join(',')
