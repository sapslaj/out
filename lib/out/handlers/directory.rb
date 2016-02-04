class Out::Handlers::Directory < Out::Handler
  match_directory
  match /.*/

  def execute(*arguments)
    exec('ls', '--color=tty', *arguments)
  end
end
