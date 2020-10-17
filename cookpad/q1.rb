# 大きさは同じで重さが異なる商品が複数あるとします。この商品N個を、以下の条件にそって3つのトラックに分配するアルゴリズムを実装してください。

# - この問いの条件 -

# 1. すべての商品は同一の大きさ、重さの箱に入り、箱は個別のIDを持つものとする

# 2. プログラム実行時は、コマンドライン引数で「箱ID」と「重さ」の情報を与え、プログラムの結果には各トラックに積載する「箱ID」を出力してください。たとえば 1:50 の文字列をコマンドライン引数で渡したときは、箱ID=1, 重さ=50kg の商品とする

# 3. 商品は箱に入った状態で列となって連続で運び込まれ、重さは持ち上げるまでわからず、尚且つ同時に1つしか持ち上げられない

# 4. それぞれのトラックには、なるべく重さが均等になるように分配する必要がある

# 5. それぞれのトラックの積載可能重量に制限はない

trucks = {truck_1: 0, truck_2: 0, truck_3: 0}

ARGV.each do |arg|
  box, weight = arg.to_s.split(':')
  min_truck_id = trucks.min_by{|_, v| v }[0]
  trucks[min_truck_id.to_sym] += weight.to_i
end

trucks.each do |truck_id, weight|
  p "#{truck_id}:#{weight}"
end