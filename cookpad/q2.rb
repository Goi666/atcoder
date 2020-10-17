# 任意の数のモンスターがいます。APIサーバーにそのうちの2匹を指定すると、対戦をさせた結果を得ることができます。モンスターの強さは決まっていて、同じモンスター同士であれば、対戦の結果は常に変わりません。また、三すくみのような状態は考えないものとします。このAPIサーバーをつかって、モンスターを強い順に並べてください。

# API アクセス例

# $ curl https://ob6la3c120.execute-api.ap-northeast-1.amazonaws.com/Prod/battle/dragon+griffin
# {"winner":"dragon","loser":"griffin"}
require 'net/http'
require 'json'

monsters = []
cnt = 0
ARGV.each_with_index do |arg, i|
  if i == 0
    monsters << arg
    next
  end
  
  monsters.each_with_index do |monster, k|
    api_uri = "https://ob6la3c120.execute-api.ap-northeast-1.amazonaws.com/Prod/battle/#{monster}+#{arg}"
    response = Net::HTTP.get_response(URI.parse(api_uri))
    cnt += 1
    res_json = JSON.parse(response.body)
    idx = (k - 1) < 0 ? 0 : (k - 1)
    if res_json['winner'] == arg
      monsters.insert(idx, arg)
      break
    else
      if k + 1 == monsters.length
        monsters << arg
        break 
      end
    end
  end
end

p monsters
p cnt