#
# Cookbook:: infraClass
# Recipe:: genericinfo
#
# The MIT License (MIT)
#
# Copyright:: 2020, Jimbo Dragon
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.


# Chef::Log.warn "node['packages'] = " + node['packages'].to_s
# Chef::Log.warn "node['filesystem'] = " + node['filesystem'].to_s
# Chef::Log.warn "node['block_device'] = " + node['block_device'].to_s
# Chef::Log.warn "node['sysconf'] = " + node['sysconf'].to_s
# Chef::Log.warn "node['languages'] = " + node['languages'].to_s
# Chef::Log.warn "node['dmi'] = " + node['dmi'].to_s
# Chef::Log.warn "node['counters'] = " + node['counters'].to_s
# Chef::Log.warn "node['network'] = " + node['network'].to_s
# Chef::Log.warn "node['memory'] = " + node['memory'].to_s

# Chef::Log.warn "node['kernel'] = " + node['kernel'].to_s
# Chef::Log.warn "node['keys'] = " + node['keys'].to_s
# Chef::Log.warn "node['systemd_paths'] = " + node['systemd_paths'].to_s
# Chef::Log.warn "node['cpu'] = " + node['cpu'].to_s

Chef::Log.warn "node['platform_family'] = " + node['platform_family']
Chef::Log.warn "node['platform'] = " + node['platform']
Chef::Log.warn "node['platform_version'] = " + node['platform_version']
Chef::Log.warn "node['ipaddress'] = " + node['ipaddress']
Chef::Log.warn "node['IPAddress'] = " + node['IPAddress'].to_s
Chef::Log.warn "node['macaddress'] = " + node['macaddress']
Chef::Log.warn "node['fqdn'] = " + node['fqdn']
Chef::Log.warn "node['hostname'] = " + node['hostname']
Chef::Log.warn "node['domain'] = " + node['domain']
Chef::Log.warn "node['recipes'] = " + node['recipes'].to_s
Chef::Log.warn "node['roles'] = " + node['roles'].to_s
Chef::Log.warn "node['environment'] = " + node['environment'].to_s
Chef::Log.warn "node['ohai_time'] = " + node['ohai_time'].to_s
Chef::Log.warn "node['os'] = " + node['os'].to_s
Chef::Log.warn "node['os_version'] = " + node['os_version'].to_s
Chef::Log.warn "node['tags'] = " + node['tags'].to_s
Chef::Log.warn "node['machinename'] = " + node['machinename'].to_s
Chef::Log.warn "node['lsb'] = " + node['lsb'].to_s
Chef::Log.warn "node['virtualization'] = " + node['virtualization'].to_s
Chef::Log.warn "node['shells'] = " + node['shells'].to_s
Chef::Log.warn "node['fips'] = " + node['fips'].to_s
Chef::Log.warn "node['time'] = " + node['time'].to_s
Chef::Log.warn "node['root_group'] = " + node['root_group'].to_s
Chef::Log.warn "node['cloud'] = " + node['cloud'].to_s
Chef::Log.warn "node['init_package'] = " + node['init_package'].to_s
Chef::Log.warn "node['uptime_seconds'] = " + node['uptime_seconds'].to_s
Chef::Log.warn "node['idletime_seconds'] = " + node['idletime_seconds'].to_s
Chef::Log.warn "node['idletime'] = " + node['idletime'].to_s
Chef::Log.warn "node['command'] = " + node['command'].to_s
Chef::Log.warn "node['chef_packages'] = " + node['chef_packages'].to_s
Chef::Log.warn "node['machine_id'] = " + node['machine_id'].to_s
Chef::Log.warn "node['shard_seed'] = " + node['shard_seed'].to_s
Chef::Log.warn "node['hostnamectl'] = " + node['hostnamectl'].to_s
Chef::Log.warn "node['chef_guid'] = " + node['chef_guid'].to_s
Chef::Log.warn "node['name'] = " + node['name'].to_s
Chef::Log.warn "node['chef_environment'] = " + node['chef_environment'].to_s
Chef::Log.warn "node['expanded_run_list'] = " + node['expanded_run_list'].to_s
Chef::Log.warn "node['cookbooks'] = " + node['cookbooks'].to_s

# Chef::Log.warn "node['network']['default_interface'] = " + node['network']['default_interface'].to_s
# Chef::Log.warn "node['network']['interfaces'] = " + node['network']['interfaces'].to_s
# Chef::Log.warn "node['network']['interfaces']['eth0'] = " + node['network']['interfaces']['eth0'].to_s

# node['recipes'].methods

# Chef::Log.warn "node = " + node.keys.to_s


# node = ["vagrant", "apt", "seven_zip", "msys2", "build-essential", "virtualbox", "tags", "hostname", "machinename", "fqdn", "domain", "keys", "dmi", "virtualization", "kernel", "os", "os_version", "lsb", "platform", "platform_version", "platform_family", "memory", "network", "counters", "IPAddress", "ipaddress", "macaddress", "shells", "languages", "fips", "time", "root_group", "sysconf", "cloud", "init_package", "uptime_seconds", "uptime", "idletime_seconds", "idletime", "command", "chef_packages", "ohai_time", "packages", "filesystem", "cpu", "machine_id", "shard_seed", "block_device", "systemd_paths", "hostnamectl", "chef_guid", "name", "chef_environment", "recipes", "expanded_run_list", "roles", "cookbooks"]
