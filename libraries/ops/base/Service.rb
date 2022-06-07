#
# Chef Documentation
# https://docs.chef.io/libraries.html
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#

require_relative "Environment.rb"

module Infraclass
  module ServiceHelpers
    #
    # Define the methods that you would like to assist the work you do in recipes,
    # resources, or templates.
    #
    # def my_helper_method
    #   # help method implementation
    # endputs "Loading Environment recipe"

    puts "Loading Infraclass::EnvironmentHelpers module"
    ::Chef::Log.warn("Loading Infraclass::EnvironmentHelpers module")
    # extend Infraclass::EnvironmentHelpers

    class Service
      attr_reader :name
      attr_reader :environmentList

      def initialize(name)
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
