$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

libraries = %w(date bigdecimal)
libraries.each { |library| require library }

base = File.expand_path(File.dirname(__FILE__))

require File.join(base, 'corex/object')
require File.join(base, 'corex/hash')
require File.join(base, 'corex/numeric')
require File.join(base, 'corex/date')
require File.join(base, 'corex/string')