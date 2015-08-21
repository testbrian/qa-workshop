module AmazonApiServices
  class FetchBook
    def initialize(isbn: '')
      @isbn = isbn
    end

    def self.call(isbn: '')
      new(isbn: isbn).call
    end

    def call
      book = Book.new
      client = ASIN::Client.instance
      item = client.lookup(@isbn).first
      review = item.editorial_reviews.first.last
      review = review.last if review.respond_to? :last
      book.description = review.content
      book.cover = item.large_image.url
      book.title = item.item_attributes.title
      book.author = item.item_attributes.author
      book.publishing_house = item.item_attributes.publisher
      book.published_at = Time.parse(item.item_attributes.release_date ||
                                     item.item_attributes.publication_date)
      book.quantity = 1
      book.book_category = BookCategory.first_or_create(name: 'Fiction')
      book.save
    rescue => e
      byebug
    end
  end
end
