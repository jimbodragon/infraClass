
require_relative "basevm.rb"
module Infraclass
::Chef::Log.warn("Loading Infraclass module for VMWithHardDrives class")
  class VMWithHardDrives
    prepend Infraclass::BaseVM

    attr_reader :hardDrives
    ::Chef::Log.warn("Loading Infraclass::VMWithHardDrives class")

    def initialize(name, hostname)
      ::Chef::Log.warn("initialize Infraclass::VMWithHardDrives with name #{name} and hostname #{hostname}")
      super(name, hostname)
    end
  end
end
