require 'coderay'

class Out::Handlers::C < Out::Handler
  match /^.*(c|h)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :c).terminal
  end
end
