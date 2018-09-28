class Book
  attr_accessor :title #need this otherwise it returns get NoMethodError
   def title=(word) #capitalize the 
     words = word.split(' ')
     keepDowncased = ["the", "a", "an", "and", "in", "of"]
    for i in words
        if keepDowncased.include?(i)
            i.downcase!
        else
            i.capitalize!
        end
    end
    words[0].capitalize!
     @title = words.join(' ')
    end
 end 
 book = Book.new
 #p book
 book.title = "inferno of he grand suoup a"
 p book#.title #this return just the title
 