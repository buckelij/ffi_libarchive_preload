lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ffi_libarchive_preload/version"

Gem::Specification.new do |spec|
  spec.name          = "ffi_libarchive_preload"
  spec.version       = FfiLibarchivePreload::VERSION
  spec.authors       = ["Elijah Buck"]
  spec.email         = ["elijah.buck@gmail.com"]
  spec.homepage      = "https://github.com/buckelij/ffi_libarchive_preload"

  spec.summary       = "builds and preloads libarchive for ffi-libarchive"
  spec.license       = "MIT"

  spec.files = ["README.md", "ffi_libarchive_preload.gemspec", "Gemfile"] +
    Dir["lib/*.rb"] + 
    Dir["lib/ffi_libarchive_preload/*.rb"] +
    ["ext/Rakefile"] +
    ["ext/libarchive-#{FfiLibarchivePreload::VERSION}.tar.gz"]

  spec.require_paths = ["lib"]

  spec.extensions = ["ext/Rakefile"]

  spec.add_dependency "rake", ">= 10"
  spec.add_dependency "ffi", "~> 1"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "ffi_libarchive", "~> 1.1"
end
