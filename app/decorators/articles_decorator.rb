class ArticlesDecorator < Draper::CollectionDecorator
  delegate :current_page, :per_page, :offset, :total_entries, :total_pages # will_paginate
  delegate :current_page, :total_pages, :limit_value # kaminari

  def page_number
    42
  end
end
