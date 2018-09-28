class Temperature
  attr_accessor :c , :f

  def initialize(c: nil, f: nil)
   @celsius = c
   @fahrenheit = f
  end

  def self.from_celsius(temp)
    # cORf = temp return cORf
    Temperature.new(c:temp)
  end

  def self.from_fahrenheit(temp)
    #(( - 32 )* 5.0/9.0)
    Temperature.new(f:temp)
  end

 def in_fahrenheit
    if @celsius
        @celsius = ((@celsius * 9.0/5.0) + 32)
    else 
        @fahrenheit =  @fahrenheit
    end 
 end

 def in_celsius
    if @fahrenheit 
        @fahrenheit = ((@fahrenheit - 32 )* 5.0/9.0)
    else
        @celsius = @celsius
    end 
end
end
class Celsius < Temperature
    def initialize(c)
        @celsius = c
     end
end
 
class Fahrenheit < Temperature
    def initialize(f)
        @fahrenheit = f
    end
end

# #temp0 = (Temperature.new(:f => 50).in_fahrenheit)#50
temp1 = (Temperature.new(:f => 32).in_celsius) #0
temp2 = Temperature.from_celsius(50).in_celsius#50
temp3 = Temperature.from_celsius(50).in_fahrenheit #122
#p temp0
p temp1
p temp2
p temp3
