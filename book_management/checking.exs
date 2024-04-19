#Calling program functions from the moudule(BookManagement)

#Here i use the file extension as exs so when its run the compile not neccessary "elixir" command its enoungh for that

#we want to import the module to work another file or we use alias
import BookManagement

#For create a new book data
BookManagement.create_book("python","guido rossum",1991)


#for update a record BookManagement.update_book()

#view all books 
IO.inspect(BookManagement.get_books())
#if we want the other function works invoke that using module name