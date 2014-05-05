class BooksController < ApplicationController
	include BooksHelper

	def index
		@books = Book.all
	end

	def new
	end

	def create
		@book = Book.create(book_params)
		redirect_to books_path
	end

	def destroy
		@book = Book.find_by_id(params[:id])
		@book.destroy
		redirect_to books_path
	end
end
