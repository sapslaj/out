class Out::Handlers::Tar < Out::Handler
  match /^.*zip$/

  def execute(*arguments)
    exec('unzip', '-l', *arguments)
  end
end
