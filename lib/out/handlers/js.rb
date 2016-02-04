require 'coderay'

class Out::Handlers::Js < Out::Handler
  match /^.*(js|_js|es|es6)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :java_script).terminal
  end
end
