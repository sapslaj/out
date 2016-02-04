require 'coderay'

class Out::Handlers::Ruby < Out::Handler
  match /^.*(Capfile|capfile|Gemfile|.gemspec|Rakefile|.rake|.rb|.rbx|.ru|.ruby|Thorfile|Vagrantfile)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :ruby).terminal
  end
end
