class Article < ActiveRecord::Base
  belongs_to :author

  def published?
    !!published_at
  end

  def publication_status
    if published?
      I18n.t(:published, at: published_at.strftime('%d.%m.%Y'))
    else
      I18n.t(:not_published)
    end
  end
end
