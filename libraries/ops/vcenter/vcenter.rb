# name 'Helper file for chef_workstation_initialize'
# maintainer 'Jimbo Dragon'
# maintainer_email 'jimbo_dragon@hotmail.com'
# license 'MIT'
# description 'Helper file for chef_workstation_initialize'
# version '0.1.0'
# chef_version '>= 16.6.14'
# issues_url 'https://github.com/jimbodragon/chef_workstation_initialize/issues'
# source_url 'https://github.com/jimbodragon/chef_workstation_initialize'
#
# Chef Infra Documentation
# https://docs.chef.io/libraries/
#

#
# This module was named as Chef for the chef command
#

module InfraClass
  module Ops
    module Vcenter
      puts "Loading Infraclass::Ops::Vcenter module"
      ::Chef::Log.warn("Loading Infraclass::Ops::Vcenter module")
      def berks_vendor(cookbookname, project_name, berks_path, cookbook_path, compile_time)
        execute "Adding berks vendor of the cookbook #{cookbookname} into the chef repo #{new_resource.project_name}" do
          command "berks vendor #{berks_path}"
          compile_time compile_time
          cwd cookbook_path
          only_if (::File.exist? ::File.join(cookbook_path, "Berksfile")).to_s
        end
      end




      def chef_run_options(new_resource, run_opts = {})
        env = {}
        if new_resource.user
          run_opts[:user] = new_resource.user
          # Certain versions of `git` misbehave if git configuration is
          # inaccessible in $HOME. We need to ensure $HOME matches the
          # user who is executing `git` not the user running Chef.
          env["HOME"] = chef_get_homedir(new_resource.user)
        end
        run_opts[:group] = new_resource.group if new_resource.group
        env["GIT_SSH"] = new_resource.ssh_wrapper if new_resource.ssh_wrapper
        run_opts[:log_tag] = new_resource.to_s
        run_opts[:timeout] = new_resource.timeout if new_resource.timeout
        env.merge!(new_resource.environment) if new_resource.environment
        run_opts[:environment] = env unless env.empty?
        run_opts
      end

      def chef(new_resource, *args, **run_opts)
        chef_command = ["chef", args].compact.join(" ")
        logger.trace "running #{chef_command}"
        shell_out!(chef_command, **chef_run_options(new_resource, run_opts))
      end

      # Returns the home directory of the user
      # @param [String] user must be a string.
      # @return [String] the home directory of the user.
      # from @Chef_16.6.14/provider/git
      #
      def chef_get_homedir(user)
        require "etc" unless defined?(Etc)
        case user
        when Integer
          Etc.getpwuid(user).dir
        else
          Etc.getpwnam(user.to_s).dir
        end
      end
    end
  end
end
