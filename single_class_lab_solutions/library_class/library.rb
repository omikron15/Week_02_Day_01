class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  # def books()
  #   return @books
  # end

  def book_info(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return nil
  end

  def rental_details(title)
    # for book in @books
    #   if book[:title] == title
    #     return book[:rental_details]
    #   end
    # end
    info = book_info(title)
    return info[:rental_details] if info
  end

  def add_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  def change_rental_details(title, name, date)
    book = book_info(title)
    book[:rental_details] = {
      student_name: name,
      date: date
    }
  end

end
