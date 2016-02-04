require 'tty'
require 'csv'

class Out::Handlers::Csv < Out::Handler
  match /^.*csv$/

  def execute(*arguments)
    csv = CSV.read(arguments.last)
    table = TTY::Table.new csv

    puts table.render(:unicode)
  end
end
