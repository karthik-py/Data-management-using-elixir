#Its fuctional language so we can create module and functions inside that modules
#I use the file extension as ex so compile the file is neccessary

defmodule BookManagement do
  @username "root"
  @password "anand777"
  @database "book_management_db"
  @hostname "localhost"
#connection to database we can also give the username (root)directly instead of giving like this username: @username
  def connect() do
    {:ok, connection} = :mysql.start_link(username: @username, password: @password, database: @database, hostname: @hostname)
    connection
  end
   # CRUD operations for data management

   #here in create and update books the number of arguements given by us is mandatory is equal to parameters
  def create_book(tittle, Author, published_year) do
    :mysql.query("INSERT INTO books (tittle, Author, published_year) VALUES (?, ?, ?)", [tittle, Author, published_year])
  end
  #assign the databases data in the result variable and data fetch when the function called the data shown
  def get_books() do
    {:ok, result} = :mysql.query("SELECT * FROM books")
    result
  end

  def get_book(id) do
    {:ok, [book]} = :mysql.query("SELECT * FROM books WHERE id = ?", [id])
    book
  end

  
  def update_book(id, tittle, Author, published_year) do
    :mysql.query("UPDATE books SET tittle = ?, Author = ?, published_year = ? WHERE id = ?", [title, Author, published_year, id])
  end

  # data delete from database using and fetch the id number so want a id as a parameter

  def delete_book(id) do
    :mysql.query("DELETE FROM books WHERE id = ?", [id])
  end
end