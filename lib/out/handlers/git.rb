class Out::Handlers::Git < Out::Handler
  match_directory
  match proc { |t| Dir.exist?("#{t}/.git") }

  def execute(*arguments)
    old_dir = Dir.pwd
    Dir.chdir(arguments.last)

    system("git branch")
    Dir.chdir(old_dir)
    puts
    exec('ls', '--color=tty', *arguments)
  end
end
