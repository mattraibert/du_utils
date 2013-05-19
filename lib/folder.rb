class Folder
  attr_accessor :bytes, :path

  def initialize(bytes, path)
    bytes = Bytes.new(bytes) unless bytes.class == Bytes
    @bytes = bytes
    @path = path
  end
end