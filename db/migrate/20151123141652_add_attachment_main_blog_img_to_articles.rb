class AddAttachmentMainBlogImgToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :main_blog_img
    end
  end

  def self.down
    remove_attachment :articles, :main_blog_img
  end
end
