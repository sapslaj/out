module Out::Handlers
  module_function

  @handlers = []

  def for(target)
    @handlers.select do |handler|
      !!handler.matches_directory == ::File.directory?(target)
    end
  end

  def add_handler(klass)
    @handlers.push(klass)
  end
end

# General handlers
require 'out/handlers/directory'
require 'out/handlers/file'

# Code handlers
require 'out/handlers/ruby'
require 'out/handlers/erb'
require 'out/handlers/c'
require 'out/handlers/cpp'
require 'out/handlers/css'
require 'out/handlers/html'
require 'out/handlers/js'
require 'out/handlers/json'
require 'out/handlers/java'
require 'out/handlers/php'
require 'out/handlers/python'
require 'out/handlers/sql'
require 'out/handlers/xml'
require 'out/handlers/yaml'

# Table handers
require 'out/handlers/csv'

# Archive handlers
require 'out/handlers/tar'
require 'out/handlers/zip'

# Directory handlers
require 'out/handlers/git'
