
require_relative "vmprovided.rb"
module Infraclass
::Chef::Log.warn("Loading Infraclass module for VirtualMachineProvider class")
  class VirtualMachineProvider
    attr_reader :name
    ::Chef::Log.warn("Loading Infraclass::VirtualMachineProvider class")

    def initialize(name)
      ::Chef::Log.warn("initialize Infraclass::VirtualMachineProvider with name #{name}")
      @name = name
    end

    def LoadVMs(vagrantconfig, *vmList)
      puts "Need to be initialize by the inherence"
    end

    def SetVM(vmObj)
      puts "Need to be initialize by the inherence"
    end
  end
end
