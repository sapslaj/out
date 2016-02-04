require 'coderay'

class Out::Handlers::Cpp < Out::Handler
  match /^.*(cc|cpp|cp|cxx|c\+\+|cu|cuh|h|hh|hpp|hxx|h++|inl|ipp|tcc|tpp)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :cpp).terminal
  end
end
