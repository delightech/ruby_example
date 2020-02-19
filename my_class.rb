require 'open3'
class MyClass
    def hello
        puts 'Hello, My object!'
    end
    def length=(val)
        @length = val
    end
    def length
        @length
    end
    def test1
      "TEST1"
    end
    def test2
      "TEST2"
    end
    def test3
      out, err, status = Open3.capture3("node #{File.expand_path("../", __dir__)}/puppeteer_test.js")
      puts out
      puts err
    end
end
