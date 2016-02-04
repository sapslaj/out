class Out::Handlers::File < Out::Handler
  match /.*/

  def execute(*arguments)
    exec('cat', *arguments)
  end
end
