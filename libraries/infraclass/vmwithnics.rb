
require_relative "basevm.rb"
module Infraclass
::Chef::Log.warn("Loading Infraclass module for Infraclass class")
  class VMWithNICs < Infraclass::BaseVM

    attr_reader :nics
    ::Chef::Log.warn("Loading Infraclass::VMWithNICs class")

    def initialize(name, hostname)
      ::Chef::Log.warn("initialize Infraclass::VMWithNICs with name #{name} and hostname #{hostname}")
      super(name, hostname)
    end
  end
end
