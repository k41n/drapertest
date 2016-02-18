Author.delete_all
Article.delete_all
a1 = Author.create!(name: 'Stephen King')
Article.create(author: a1, published_at: 3.days.ago, id: 1)
