class MigrateCommentToRichCommentBookmarks < ActiveRecord::Migration[6.0]
  def up
    Bookmark.find_each do |bookmark|
      bookmark.update(rich_comment: bookmark.comment)
    end
  end

  def down
    Article.find_each do |bookmark|
      bookmark.update(comment: bookmark.rich_comment)
      bookmark.update(rich_comment: nil)
    end
  end
end
