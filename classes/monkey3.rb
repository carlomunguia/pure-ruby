class Book

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

# p goosebumps

class Book
  def read
    1.step(@pages, 10) { |page| puts "Reading page #{page}..." }
    puts "Done! #{@title} was a great book!"
  end
end

goosebumps = Book.new("Night of the living Mummy", "R.L. Meiniken", "100")
# animal_farm = Book.new("Animal Farm", "George Orwell", 50)
# p animal_farm.read
goosebumps.read