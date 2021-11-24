#
# Chef Documentation
# https://docs.chef.io/libraries.html
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#
require_relative "Base/Environment.rb"
require_relative "Base/VirtualMachine.rb"
require_relative "Base/VMProvided.rb"
module Infraclass
  module VagrantConfigHelpers
    #
    # Define the methods that you would like to assist the work you do in recipes,
    # resources, or templates.
    #
    # def my_helper_method
    #   # help method implementation
    # end#
    puts "Loading Infraclass::VagrantConfigHelpers module"
    Chef::Log.warn("Loading Infraclass::VagrantConfigHelpers module")

    include Infraclass::EnvironmentHelpers
    include Infraclass::VirtualmachineHelpers
    include Infraclass::VirtualmachineproviderHelpers

    class VagrantConfig
      attr_reader :version
      @envList

      def initialize(version)
        @version = version
        @envList = Array.new
      end

      def AddEnvironment(newEnvironment)
        puts "Adding environment " + newEnvironment.name
        @envList.push(newEnvironment)
      end

      def LoadVMs()
        @envList.each do |env|
          Vagrant.configure(@version) do |config|
            env.LoadEnvironment(config)
          end # End of Vagrant.configure
        end # End of Environment list
      end # End of LoadVMs method

      def VagrantConfig.Version1
        return "1"
      end

      def VagrantConfig.Version2
        return "2"
      end
    end # End of VagrantConfig class
  end
end

#
# The module you have defined may be extended within the recipe to grant the
# recipe the helper methods you define.
#
# Within your recipe you would write:
#
#     extend Infraclass::VagrantConfigHelpers
#
#     my_helper_method
#
# You may also add this to a single resource within a recipe:
#
#     template '/etc/app.conf' do
#       extend Infraclass::VagrantConfigHelpers
#       variables specific_key: my_helper_method
#     end
#
