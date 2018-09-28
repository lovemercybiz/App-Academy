#THIS IS HORRIBLE!!!! I left it as it!! 
# View at your own risk!!!


class RPNCalculator
  attr_accessor :c

def initialize
    @c = Array.new
  end
  
def error
    raise "calculator is empty"
  end

def push(*args)
     @c.push(*args) 
  end

def plus
     @c != [] ? @c.push("+") : error
  end

def minus
    @c != [] ? @c.push("-") : error
  end

def times
    @c != [] ? @c.push("*"): error
  end

def divide
    @c != [] ? @c.push("/") : error
  end

def tokens(str)
    operators = [ "**" , "*" , "/" , "+" , "-" ]
    str = str.gsub(/\s+/, "").split('')
    answer = []
    str.each do |let|
        if operators.include?(let)
              let = let.to_sym
              answer << let 
         elsif let.is_a? String
            let = let.to_i
            answer << let
         else 
            answer << let
        end
    end
    @c = answer
end

def value
    value = nil
    operators = [ "**" , "*" , "/" , "+" , "-" ]
    signs = []
    count = 0
   @c.each do |i|
     if operators.include?(i)
         count += 1
      end
   end
  countO = 0
  operators.each do |m| #worked
     if @c[-2..-1].include?(m)
         countO += 1
     end
  end
  if countO == 2 #worked
     signs = @c[-2..-1]
     @c.delete("*") && @c.delete("+") && @c.delete("-") &&   @c.delete("/")
     if signs[0] == "*"
         value = @c.pop * @c.pop
      end
      if signs[0] == "+"
         value = @c.pop + @c.pop
      end
      if signs[0] == "-"
         value = @c.pop - @c.pop
      end
      if signs[0] == "/"
         value = @c.pop / @c.pop
     end
     @c << value

     if signs[1] == "*"
         value = @c.pop * @c.pop
      end
      if signs[1] == "+"
         value = @c.pop + @c.pop
      end
      if signs[1] == "-"
         value = @c.pop - @c.pop
      end
      if signs[1] == "/"
         value = @c.pop / @c.pop
     end
     return value
  end

   if count == 1 #puts operators in new object
    @c.each do |j|
     if operators.include?(j)
        signs << j
        @c.delete(j)
      end
    end 
   end

 if count > 1
   if @c[0..2].pop == "+"
     @c.delete("+")
     value = @c[0] + @c[1]
     @c.delete(0)
    @c.delete(1)
    @c.delete(2)
    @c << value
    @c = @c.rotate(-1)
   end
   if @c[0..2].pop == "*"
     @c.delete("*")
     value = @c[0] * @c[1]
     @c.delete(0)
    @c.delete(1)
    @c.delete(2)
    @c << value
    @c = @c.rotate(-1)
   end
   if @c[0..2].pop == "-"
     @c.delete("-")
     value = @c[0] - @c[1]
     @c.delete(0)
    @c.delete(1)
    @c.delete(2)
    @c << value
    @c = @c.rotate(-1)
   end
   if @c[0..2].pop == "/"
     @c.delete("/")
     value = @c[0] / @c[1]
     @c.delete(0)
    @c.delete(1)
    @c.delete(2)
    @c << value
    @c = @c.rotate(-1)
   end
   return value
 end

    @c.each do |i|
      if signs[0] == "+"  
        value = (@c[-2] + @c[-1])
      end

      if signs[0] == "-"  
       value = (@c[-2] - @c[-1])
      end

      if signs[0] == "*"  
       value = (@c[-2] * @c[-1])
      end

      if signs[0] == "/"  
       value = (@c[-2].to_f / @c[-1].to_f)
      end

    end
    @c.delete(@c[-2]) && @c.delete(@c[-1])
    @c << value
   return value
end  

def evaluate(str)
      str = tokens(str)
      @c = str
      answer = []
      @c.each do |v|
        if v.is_a? Symbol
          v = v.to_s
          answer << v
        else
          answer << v
        end
      end
      @c = answer
      #  @c = @c.value
      return value
end

end

