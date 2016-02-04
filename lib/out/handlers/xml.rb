require 'coderay'

class Out::Handlers::Xml < Out::Handler
  match /^.*(atom|proj|rss|svg|xml|xul)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :xml).terminal
  end
end
