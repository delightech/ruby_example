require 'json'
unless (v = ARGV[0]).nil?
  puts v.gsub(/\\u([\da-fA-F]{4})/) { [$1].pack('H*').unpack('n*').pack('U*') }
end
