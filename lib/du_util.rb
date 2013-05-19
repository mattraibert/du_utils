require 'bytes'

def duu(path)
  folders = `sudo du -b --max-depth=1 #{path}`.split("\n").sort {|x,y| x.to_i <=> y.to_i }
  folders = folders.map {|x| x.split(" ", 2) }.map {|size, path| "#{Bytes.new(size).to_s.ljust(18)} #{path}"}
  puts folders
end


