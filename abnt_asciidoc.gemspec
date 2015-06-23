# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'abnt_asciidoc/version'

Gem::Specification.new do |spec|
  spec.name          = "abnt_asciidoc"
  spec.version       = AbntAsciidoc::VERSION
  spec.authors       = ["Eduardo de Santana Medeiros Alexandre"]
  spec.email         = ["eduardo.ufpb@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Compila arquivos escritos em Asciidoc com as normas da ABNT.}
  spec.description   = %q{Com ela ferramenta você poderá compilar trabalhos de conclusão de curso (monografia, dissertação ou tese) utilizando Asciidoc.}
  spec.homepage      = "https://github.com/edusantana/abnt_asciidoc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_development_dependency "gli"
  spec.add_development_dependency "liquid"
  spec.add_development_dependency "json"

  spec.add_development_dependency "asciidoctor-latex"
  spec.add_development_dependency "thread_safe" # asciidoctor: WARNING: gem 'thread_safe' is not installed. This gem recommended when registering custom converters.

end
