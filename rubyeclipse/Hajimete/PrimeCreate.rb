class PrimeCreate
 (1..10000).each do |candiate|
        sqrt = Math.sqrt(candiate)
        factor_found=(2..sqrt).any?{|i| candiate%i==0}
        if factor_found then
        else
          p candiate
        end
      end

end