class BookStore
  def initialize
    @books = {

      C: 5,
      CPP: 4,
      Java: 3,
      Python: 5,
      Ruby: 5,
      Jython: 3
    }
  end

  @@instance = BookStore.new

  def self.instance
    @@instance
  end

  def add(title, rating)
    return -1 unless @books[title.to_sym].nil?

    @books[title.to_sym] = rating.to_i
    1
  end

  def update(title, rating)
    return -1 if @books[title.to_sym].nil?

    @books[title.to_sym] = rating.to_i
    1
  end

  def search(string)
    @books.select do |title, _rating|
      title.to_s.include? string
    end
  end

  def display
    @books.each do |book, rating|
      puts "#{book}: #{rating}"
    end
  end

  def delete(title)
    return -1 if @books[title.to_sym].nil?

    @books.delete(title.to_sym)
    1
  end

  def getBook(title)
    @books[title.to_sym]
  end

  private_class_method :new
end

if $PROGRAM_NAME == __FILE__

  bookstore = BookStore.instance

  loop do
    puts 'Enter your choice add, update, search, display, delete or exit ? '
    choice = gets.chomp

    case choice
    when 'add'
      puts 'Enter title of book ?'
      title = gets.chomp
      puts 'Enter rating ?'
      rating = gets.chomp
      if bookstore.add(title, rating) == 1
        puts "Book '#{title}' with rating '#{rating}' is added"
      else
        puts 'book already exist'
      end

      bookstore.display

    when 'update'
      puts 'Enter title of book ?'
      title = gets.chomp
      puts 'Enter rating ?'
      rating = gets.chomp

      if bookstore.update(title, rating) == -1
        puts "book doesn't exist"
      else
        puts "Book '#{title}' with rating '#{rating}' is updated"
      end
      bookstore.display

    when 'search'

      puts 'Enter search string ?'
      string = gets.chomp
      foundbooks = bookstore.search(string)
      puts "Found books list #{foundbooks}"

    when 'display'
      bookstore.display

    when 'delete'
      puts 'Enter title of book ?'
      title = gets.chomp
      if bookstore.delete(title) == -1
        puts "book doesn't exist"
      else
        puts "Book '#{title}' is deleted"
      end

      bookstore.display

    when 'exit'
      break

    else
      puts 'Error!'
    end
  end
end
