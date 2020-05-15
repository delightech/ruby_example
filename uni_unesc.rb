require 'json'
unless (v = ARGV[0]).nil?
  begin
    puts JSON.load(v)
  rescue
    puts JSON.load("\"#{v}\"")
  end
end
