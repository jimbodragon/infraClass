
module Infraclass
::Chef::Log.warn("Loading Infraclass module for BaseVM class")
  class BaseVM
    attr_reader :hostname
    attr_reader :name
    ::Chef::Log.warn("Loading Infraclass::BaseVM class")

    def initialize(name, hostname)
      ::Chef::Log.warn("initialize Infraclass::BaseVM with name #{name} and hostname #{hostname}")
      @name = name
      @hostname = hostname
    end
  end
end
