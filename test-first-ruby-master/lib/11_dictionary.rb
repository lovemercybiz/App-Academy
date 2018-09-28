class Dictionary
  attr_accessor :d

  def initialize
    @d = Hash.new
  end

  def entries
    @d
  end

  def add(value)
    if value.class == String
      value = value.split(' ')
        value.each do |word|
            @d[word] = nil
        end
   else
      @d.merge!(value)
   end
  end

  def keywords
    @d.keys.sort!
  end

  def include?(value)
    @d.include?(value)
  end

  def find(value)
    answer = []
        if @d.empty? == true
              return {}
        end
        @d.each do |k,v|
          answer << k if /#{value}/.match(k) != nil  
        end
      final = @d.select {|k,v| k == answer[0]} 
      return final.merge! @d.select {|k,v| k == answer[-1]}
    end
    def printable
      answer = []
      @d = @d.sort
      @d.each do |k , v|
      answer << %Q{[#{k}] "#{v}"\n}
      end
      return answer.join.chomp
end
end
