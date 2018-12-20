
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "why/version"

Gem::Specification.new do |spec|
  spec.name          = "why"
  spec.version       = Why::VERSION
  spec.authors       = ["Coco Coder (aka Delaney Burke)"]
  spec.email         = ["shout@cococoder.com"]

  spec.summary       = %q{Why - The missing part of agile processt}
  spec.description   = %q{With an agile process we all make decisions, we make trade offs on why we don't make everything bullet proof, the why gem allows you to record those decisions so that you refer back to them.}
  spec.homepage      = "http:://why.cococoder.com"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
