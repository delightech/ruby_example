# frozen_string_literal: true

module TextStrage
  class Controller
    def initialize(file_path)
      @file_path = file_path
    end

    def append(text)
      File.open(@file_path, 'a+') do |f|
        f.puts text
      end
    end

    def append_uniq(text)
      append text unless include? text
    end

    def include?(text)
      File.exist?(@file_path) &&
        File.open(@file_path, 'r') { |f| f.readlines(chomp: true) }.uniq.include?(text)
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  # $PROGRAM_NAMEは$0と同じ実行ファイル名を指す
  a = TextStrage::Controller.new('text_save_test.txt')
  a.append('not uniq string')
  a.append_uniq('uniq string1')
  a.append_uniq('uniq string2')
  a.append_uniq('uniq string3')
end
