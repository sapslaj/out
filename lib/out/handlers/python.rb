require 'coderay'

class Out::Handlers::Python < Out::Handler
  match /^.*(cpy|gyp|gypi|kv|py|pyw|rpy|Snakefile)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :python).terminal
  end
end
