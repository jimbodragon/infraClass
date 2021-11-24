#
# Chef Documentation
# https://docs.chef.io/libraries.html
#

#
# This module name was auto-generated from the cookbook name. This name is a
# single word that starts with a capital letter and then continues to use
# camel-casing throughout the remainder of the name.
#
require_relative "../Base/VMProvided.rb"
require_relative "VBoxVM.rb"
module Infraclass
  module VboxproviderHelpers
    #
    # Define the methods that you would like to assist the work you do in recipes,
    # resources, or templates.
    #
    # def my_helper_method
    #   # help method implementation
    # end#

    puts "Loading Infraclass::VboxproviderHelpers module"
    Chef::Log.warn("Loading Infraclass::VboxproviderHelpers module")
    extend Infraclass::VirtualmachineproviderHelpers
    extend Infraclass::VboxvmHelpers

    class VBoxProvider < Infraclass::VirtualmachineproviderHelpers::VirtualMachineProvider

      def initialize(name)
        super(name)
      end

      def LoadVMs(vagrantconfig, vmlist)
        vagrantconfig.vm.box = @vmBox
        puts "\nvmlist = " + vmlist.inspect
        vmlist.each do |vmObj|
          vagrantconfig.vm.define vmObj.name do |vagrantVM|
            vagrantVM.vm.hostname = vmObj.hostname
            vagrantVM.vm.provider :"virtualbox" do |vboxprovider|
              # The vSphere host we're going to connect to
              vsphere.host = @host

              vsphere.linked_clone = vmObj.linked_clone
              vsphere.customization_spec_name = vmObj.customization_spec_name

              vsphere.vlan = vmObj.vlan

            # The ESX host for the new VM
              vsphere.compute_resource_name = @clusterName

              # The resource pool for the new VM
              # vsphere.resource_pool_name = 'DEV'

              # The template we're going to clone
              vsphere.template_name = vmObj.template_name

              # The name of the new machine
              vsphere.name = vmObj.name

              #Set MAC Address
              if vmObj.mac != ""
                vsphere.mac = vmObj.mac
              end

              vsphere.data_store_name = vmObj.data_store_name

              #Set VM location
              vsphere.vm_base_path = vmObj.vm_base_path

              # vSphere login
              vsphere.user = @user

              # vSphere password
              vsphere.password = @password

              # If you don't have SSL configured correctly, set this to 'true'
              vsphere.insecure = vmObj.insecure

              if vmObj.useChefSolo
                chefRepoPath = "/tmp/chefRepo"
                currentDir = Dir.pwd
                  puts "chefRepoPath = #{chefRepoPath}\ncurrentDir = #{currentDir}"
                # vagrantVM.vm.synced_folder "chefRepo/", chefRepoPath, owner: "vagrant", group: "vagrant"
                # vagrantVM.vm.provision "file", source: "chefRepo/", destination: chefRepoPath do |filesource|
                #   puts "#{filesource.methods.inspect}"
                # end

                vagrantVM.vm.provision "chef_solo" do |chef|
                  # Specify the local paths where Chef data is stored
                    puts "\n\nSetting chefRepo"
                  chef.cookbooks_path = "chefRepo/cookbooks/"
                  chef.data_bags_path = "chefRepo/data_bags/"
                  chef.nodes_path = "chefRepo/nodes/"
                  chef.roles_path = "chefRepo/roles/"

                  # Add a recipe
                  vmObj.GetRecipes.each do |recipe|
                    puts "Adding recipe #{recipe}"
                    chef.add_recipe recipe
                  end

                  # Or maybe a role
                  vmObj.GetRoles.each do |role|
                    chef.add_role role
                  end
                end
              end
            end # End of the provider setting
          end # End of vagrant vm definition
        end # End of each VM
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
#     extend Infraclass::VboxproviderHelpers
#
#     my_helper_method
#
# You may also add this to a single resource within a recipe:
#
#     template '/etc/app.conf' do
#       extend Infraclass::VboxproviderHelpers
#       variables specific_key: my_helper_method
#     end
#
