require 'coderay'

class Out::Handlers::Php < Out::Handler
  match /^.*(aw|ctp|inc|php|php_cs|php\d|phpt|phtml)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :php).terminal
  end
end
