class Bytes
  attr_reader :bytes

  def initialize(bytes)
    @bytes = bytes.to_i
  end

  def to_s
    "#{base} #{units}"
  end

  def order
    (0..(1.0/0.0)).find { |x| @bytes / (1024 ** x) < 1024 }
  end

  def units
    {0 => "B", 1 => "KB", 2 => "MB", 3 => "GB", 4 => "TB"}[order]
  end

  def base
    (@bytes / (1024.0 ** order)).round(2)
  end

  def <=>(other)
    @bytes <=> other.bytes
  end
end
