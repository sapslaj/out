require 'coderay'

class Out::Handlers::Yaml < Out::Handler
  match /^.*(eslintrc|yaml|yml)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :yaml).terminal
  end
end
