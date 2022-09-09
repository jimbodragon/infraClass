
require_relative "virtualmachineprovider.rb"
module Infraclass
::Chef::Log.warn("Loading Infraclass module for Environment class")
  class Environment
    attr_accessor :vlan
    attr_reader :vmProvider
    attr_reader :name
    @vmList
    ::Chef::Log.warn("Loading Infraclass::Environment class")

    def initialize(name, vmProvider)
      ::Chef::Log.warn("initialize Infraclass::Environment with name #{name} and vmProvider #{vmProvider}")
      @name = name
      @vmProvider = vmProvider
      @vmList = Array.new
    end

    def AddVM(newVM)
      puts "Adding VM #{newVM.name} in #{self.name}"
      @vmList.push(newVM)
    end

    def LoadEnvironment(vagrantconfig)
      @vmProvider.LoadVMs(vagrantconfig, @vmList)
    end
  end
end
