require 'out/version'
require 'out/handler'
require 'out/handlers'

module Out
  module_function

  def run(arguments)
    target = arguments.reject { |arg| arg =~ /^-/ }.last

    potential_handlers = []

    Handlers.for(target).each do |handler|
      h = handler.new
      potential_handlers.push(h) if h.matches?(target)
    end

    potential_handlers.last.execute(*arguments)
  end
end
