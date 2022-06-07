# name 'Helper file for infraClass'
# maintainer 'Jimbo Dragon'
# maintainer_email 'jimbo_dragon@hotmail.com'
# license ''
# description 'Helper file for infraClass'
# version '0.1.0'
# chef_version '>= 15.0'
# issues_url 'https://github.com/jimbodragon/infraClass/issues'
# source_url 'https://github.com/jimbodragon/infraClass'
#
# Chef Infra Documentation
# https://docs.chef.io/libraries/
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#
require_relative "../infraclass.rb"
module Infraclass
  module VBox
    #
    # Define the methods that you would like to assist the work you do in recipes,
    # resources, or templates.
    #
    # def my_helper_method
    #   # help method implementation
    # end

    puts "Loading Infraclass::VboxvmHelpers module"
    ::Chef::Log.warn("Loading Infraclass::VboxvmHelpers module")
    # extend Infraclass::VirtualmachineHelpers

    class VBoxVM
      prepend Infraclass::VirtualMachine

      attr_accessor :linked_clone
      attr_accessor :customization_spec_name
      attr_accessor :vlan
      attr_accessor :compute_resource_name
      attr_accessor :resource_pool_name
      attr_accessor :template_name
      attr_accessor :mac
      attr_accessor :data_store_name
      attr_accessor :vm_base_path
      attr_accessor :insecure
      attr_accessor :specname

      def initialize(name, hostname)
        super(name, hostname)
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
#     extend Infraclass::VboxvmHelpers
#
#     my_helper_method
#
# You may also add this to a single resource within a recipe:
#
#     template '/etc/app.conf' do
#       extend Infraclass::VboxvmHelpers
#       variables specific_key: my_helper_method
#     end
#
