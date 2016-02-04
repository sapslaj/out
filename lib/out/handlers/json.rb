require 'coderay'

class Out::Handlers::Json < Out::Handler
  match /^.*(babelrc|bowerrc|geojson|gltf|ipynb|jscsrc|jslintrc|json|jsonl|ldj|ldjson|topojson)$/

  def execute(*arguments)
    puts CodeRay.scan(File.read(arguments.last), :json).terminal
  end
end
