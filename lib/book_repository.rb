require_relative './book'

class BookRepository

  def all
    sql = 'SELECT id, title, author_name FROM books;'
    result_test = DatabaseConnection.exec_params(sql, [])

    books = []

    result_test.each do |record|
      book = Book.new
      book.id = record['id']
      book.title = record['title']
      book.author_name = record['author_name']

    books << book
    end

    return books
  end
end