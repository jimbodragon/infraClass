#
# Chef Documentation
# https://docs.chef.io/libraries.html
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#

require_relative "VMProvided.rb"

module Infraclass
  module EnvironmentHelpers
    #
    # Define the methods that you would like to assist the work you do in recipes,
    # resources, or templates.
    #
    # def my_helper_method
    #   # help method implementation
    # endputs "Loading Environment recipe"

    extend Infraclass::VmprovidedHelpers

    class Environment
      attr_accessor :vlan
      attr_reader :vmProvider
      attr_reader :name
      @vmList

      def initialize(name, vmProvider)
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
end

#
# The module you have defined may be extended within the recipe to grant the
# recipe the helper methods you define.
#
# Within your recipe you would write:
#
#     extend Infraclass::EnvironmentHelpers
#
#     my_helper_method
#
# You may also add this to a single resource within a recipe:
#
#     template '/etc/app.conf' do
#       extend Infraclass::EnvironmentHelpers
#       variables specific_key: my_helper_method
#     end
#
