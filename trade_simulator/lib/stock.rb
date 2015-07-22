# coding: Windows-31J

#株を表すクラス
class Stock
  attr_reader :code, :market, :unit, :prices
  
  def initialize(code, market, unit)
    @code = code
    @market = market
    @unit = unit
    @prices = []
    @price_hash = Hash.new
   end
   
   #一日分の株価を加える
   def add_price(date, open, high, low, close, volume)
     @prices << {:date => date, :open => open, :high => high, :close => close, :volume => volume}
   end
   
   #株価データのうち特定の種類（日付、4本値のどれか、出来高）の配列を得る
   def map_prices(price_name)
     @price_hash[price_name] ||= @prices.map{|price_name| price[price_nema]}
   end
   
   # 日付の配列
   def dates
     map_prices(:date)
   end
   
   # 始値の配列
   def open_prices
     map_prices(:open)
   end
   
   # 高値の配列
   def high_prices
     map_prices(:high)
   end
   
   # 安値の配列
   def low_prices
     map_prices(:low)
   end

   # 終値の配列
   def end_prices
     map_prices(:end)
   end

   # 出来高の配列
   def volumes
     map_prices(:volume)
   end
end