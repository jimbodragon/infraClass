
require_relative "environment.rb"
module Infraclass
::Chef::Log.warn("Loading Infraclass module for Service class")
  class Service
    attr_reader :name
    attr_reader :environmentList
    ::Chef::Log.warn("Loading Infraclass::Service class")

    def initialize(name)
      ::Chef::Log.warn("initialize Infraclass::Service with name #{name}")
      @name = name
      @environmentList = Array.new
    end

    def AddEnvironment(environment)
      puts "Adding Environment #{environment.name} on service #{self.name}"
      @environmentList.push(environment)
    end

    def LoadService(vagrantconfig)
      @environmentList.each{ |environment| environment.LoadEnvironment(vagrantconfig) }
    end
  end
end
