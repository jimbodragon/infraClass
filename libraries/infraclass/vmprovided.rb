
require_relative "virtualmachine.rb"
module Infraclass
::Chef::Log.warn("Loading Infraclass module for VMProvided class")
  module VMProvided
    include Infraclass::VirtualMachine

    attr_accessor :useChefSolo
    attr_accessor :environment
    attr_accessor :annotation
    @recipes
    @roles
    ::Chef::Log.warn("Loading Infraclass::VMProvided class")

    def initialize(name, hostname)
      ::Chef::Log.warn("initialize Infraclass::VMProvided with name #{name} and hostname #{hostname}")
      super(name, hostname)
      @recipes = Array.new
      @roles = Array.new
    end

    def addRecipe(recipe)
      puts "Adding new recipe in #{name}"
      @recipes.push(recipe)
    end

    def addRole(role)
      @roles.push(role)
    end

    def GetRecipes()
      puts "Get all recipes in #{name}"
      return @recipes
    end

    def GetRoles()
      return @roles
    end
  end
end
