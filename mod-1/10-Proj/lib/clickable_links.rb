require 'pry'

url = 'https://www.beeradvocate.com/beer/top-rated/us/mi/'
  
printf(url)
sprintf(url)
class Meth
  def self.method_break
    i = 0
    while i < 50
      puts i
      if i % 10 == 0
        input = gets.chomp
        if input == 'n'
          break
        end
      end
      i++
    end
  end

end



binding.pry
