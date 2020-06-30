*ffi_libarchive_preload* builds the [libarchive](https://github.com/libarchive/libarchive) library and preloads it for [ffi-libarchive](https://github.com/chef/ffi-libarchive) use.

To use, require this gem before ffi-libarchive:

```
require "ffi_libarchive_preload"
require "ffi-libarchive"
Archive::Reader.open_filename("some.tar.gz").each_entry {|e| puts e.pathname}
```

A Railtie is included so if you include this Gem in a rails project the bundled libarchive will be preloaded for FFI.

See ext/Rakefile for libarchive build options, which have been selected to minimize dependencies and only handles gzip and tar files.
