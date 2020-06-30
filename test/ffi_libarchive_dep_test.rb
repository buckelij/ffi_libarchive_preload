require "minitest/autorun"
require "ffi_libarchive_preload"
require "ffi-libarchive"

class FfiLibarchivePreloadTest < Minitest::Test
  def test_read_archive
    reader = Archive::Reader.open_filename("#{__dir__}/fixture.tar.gz")

    filename = nil
    reader.each_entry do |entry|
      filename = entry.pathname
    end
    reader.close

    assert_equal filename, "fixture"
  end
end
