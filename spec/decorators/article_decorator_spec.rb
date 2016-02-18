require 'rails_helper'

RSpec.describe ArticleDecorator do

  let(:source)        { build(:article, id: 1) }
  let(:decorator)     { ArticleDecorator.decorate(source) }

  describe '#published?' do
    it 'returns true when published_at presents' do
      allow(source).to receive(:published_at).and_return(Time.zone.now)
      expect(decorator.published?).to be true
    end

    it 'returns false when published_at is nil' do
      allow(source).to receive(:published_at).and_return(nil)
      expect(decorator.published?).to be false
    end
  end
end
