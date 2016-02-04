require 'coderay'

class Out::Handlers::Sql < Out::Handler
  match /^.*(ddl|dml|phsql|psql|sql)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :sql).terminal
  end
end
