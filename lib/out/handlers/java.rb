require 'coderay'

class Out::Handlers::Java < Out::Handler
  match /^.*java$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :java).terminal
  end
end
