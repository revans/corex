$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rubygems'
require 'spec'
require 'spec/autorun'

dir = File.expand_path(File.dirname(__FILE__))
require File.join(dir, '../lib/corex')