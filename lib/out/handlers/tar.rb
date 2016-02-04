require 'coderay'

class Out::Handlers::Tar < Out::Handler
  match /^.*tar.?(gz|xz|bz2)?$/

  def execute(*arguments)
    exec('tar', '-tvf', *arguments)
  end
end
