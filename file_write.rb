require 'nkf'
csv_str = "あいうえお\nかきくけこ\nさしすせそ\n"

# 非バイナリモードだと改行コードがOSによって変わる
File.open('./test_1.xt', 'w', encoding: Encoding::SJIS) do |file|
  file.write(NKF.nkf('-Ws -c', csv_str))
end

# バイナリモードだと改行コードを想定どおりに操作可能
File.open('./test_2.xt', 'wb', encoding: Encoding::SJIS) do |file|
  file.write(NKF.nkf('-Ws -c', csv_str))
end
