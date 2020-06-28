require 'net/sftp'
csv_str = 'hogehogeho,hogehoge,hogehoge' # csvフォーマットにした文字列が入っている
path = '/home/ubuntu/tmp' # 出力先のファイルパス
filename = 'hoge.csv' # 出力したいファイル名

tmp_dir = "./tmp/"

# 一度tmpディレクトリへputsでファイルを生成する
File.open("#{tmp_dir}/#{filename}", "w") do |file|
  file.puts csv_str
end

# tmpディレクトリに作成したファイルをuploadする
Net::SFTP.start('host', 'user', :password => 'password') do |sftp|
  sftp.upload!("#{tmp_dir}/#{filename}", "#{path}/#{filename}")
end
