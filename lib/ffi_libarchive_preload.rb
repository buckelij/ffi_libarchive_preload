require "pathname"
require "ffi"

module FfiLibarchivePreload
  extend FFI::Library
  # load before ffi-libarchive so the bundled library is used
  if RUBY_PLATFORM =~ /linux/
    ffi_lib ["#{__dir__}/../ext/lib/libarchive.so.13"]
  elsif RUBY_PLATFORM =~ /darwin/
    ffi_lib ["#{__dir__}/../ext/lib/libarchive.13.dylib"]
  end
end

require "ffi_libarchive_preload/railtie" if defined?(Rails::Railtie)
