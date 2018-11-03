
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "better_tempfile/version"

Gem::Specification.new do |spec|
  spec.name          = "better_tempfile"
  spec.version       = BetterTempfileVersion::VERSION
  spec.authors       = ["Igor Kasyanchuk"]
  spec.email         = ["igorkasyanchuk@gmail.com"]

  spec.summary       = %q{Tempfile with extension}
  spec.description   = %q{Create Tempfile with extension.}
  spec.homepage      = "https://github.com/igorkasyanchuk/better_tempfile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
