#
## Cookbook:: infraClass
## Spec:: genericinfo
##
## The MIT License (MIT)
##
## Copyright:: 2020, Jimbo Dragon
##
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
## THE SOFTWARE.
#
## require 'spec_helper'
#
## describe 'infraClass::genericinfo' do
##   context 'When all attributes are default, on Ubuntu 18.04' do
##    # for a complete list of available platforms and versions see:
##    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
##    platform 'ubuntu', '18.04'
##
##    it 'converges successfully' do
##      expect { chef_run }.to_not raise_error
##    end
##  end
#
#  context 'When all attributes are default, on CentOS 7' do
#    # for a complete list of available platforms and versions see:
#    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
#    platform 'centos', '7'
#
#    it 'converges successfully' do
#      expect { chef_run }.to_not raise_error
#    end
#  end
#end
#

Chef::Log.debug("Loading spec unit recipes for library infraClass on recipe genericinfo")