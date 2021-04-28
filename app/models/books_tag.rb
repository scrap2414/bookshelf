class TweetsTag

  include ActiveModel::Model
  attr_accessor :, :name

  with_options presence: true do
    validates :
    validates :name
  end

  def save
    tweet = Book.create(message: message)
    tag = Tag.create(name: name)

    TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
  end

end