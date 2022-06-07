
require_relative "vmwithharddrives.rb"
require_relative "vmwithnics.rb"
module Infraclass
::Chef::Log.warn("Loading Infraclass module for VirtualMachine class")
  module VirtualMachine
    include Infraclass::VMWithHardDrives
    include Infraclass::VMWithNICs
    ::Chef::Log.warn("Loading Infraclass::VirtualMachine class")

    def initialize(name, hostname)
      ::Chef::Log.warn("initialize Infraclass::VirtualMachine with name #{name} and hostname #{hostname}")
      super(name, hostname)
    end
  end
end
