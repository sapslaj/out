require 'coderay'

class Out::Handlers::Erb < Out::Handler
  match /^.*erb$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :erb).terminal
  end
end
