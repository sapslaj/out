require 'coderay'

class Out::Handlers::Css < Out::Handler
  match /^.*(css|scss)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :css).terminal
  end
end
