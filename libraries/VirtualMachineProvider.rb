#
# Chef Documentation
# https://docs.chef.io/libraries.html
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#
module Infraclass
  module VirtualmachineproviderHelpers
    #
    # Define the methods that you would like to assist the work you do in recipes,
    # resources, or templates.
    #
    # def my_helper_method
    #   # help method implementation
    # end#
    puts "Loading VirtualMachineProvider recipe"

    class VirtualMachineProvider
      attr_reader :name
      attr_accessor :vmBox

      def initialize(name)
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
end

#
# The module you have defined may be extended within the recipe to grant the
# recipe the helper methods you define.
#
# Within your recipe you would write:
#
#     extend Infraclass::VirtualmachineproviderHelpers
#
#     my_helper_method
#
# You may also add this to a single resource within a recipe:
#
#     template '/etc/app.conf' do
#       extend Infraclass::VirtualmachineproviderHelpers
#       variables specific_key: my_helper_method
#     end
#
