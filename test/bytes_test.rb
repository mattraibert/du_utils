require 'test_helper'
require 'bytes'

class BytesTest < MiniTest::Unit::TestCase
  def test_order
    assert_equal 0, Bytes.new(1023).order
    assert_equal 1, Bytes.new(1024).order
    assert_equal 1, Bytes.new(1024 * 1023).order
    assert_equal 2, Bytes.new(1024 * 1024).order
  end

  def test_to_s
    assert_equal "1023.0 B", Bytes.new(1023).to_s
    assert_equal "1.0 KB", Bytes.new(1024).to_s
    assert_equal "1023.0 KB", Bytes.new(1024 * 1023).to_s
    assert_equal "1.0 MB", Bytes.new(1024 * 1024).to_s
    assert_equal "1.5 MB", Bytes.new(1024 * 1024 * 1.5).to_s
  end
end