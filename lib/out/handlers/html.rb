require 'coderay'

class Out::Handlers::Html < Out::Handler
  match /^.*(htm|html|shtml|tmpl|tpl|xhtml)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :html).terminal
  end
end
