class ArticleDecorator < Draper::Decorator
  # include Draper::LazyHelpers
  delegate_all

  decorates_association :author
  decorates_association :author, with: AuthorDecorator
  decorates_finders

  def publication_status
    if published?
      "Published at #{published_at}"
    else
      "Unpublished"
    end
  end

  def publication_status_bold
    h.content_tag 'strong', publication_status
  end

  def published?
    !!object.published_at
  end

  def published_at
    object.published_at.strftime("%A, %B %e")
  end
end
