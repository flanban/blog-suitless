class Article < ActiveRecord::Base
  
  has_attached_file :main_blog_img, styles: { big: "600x600", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :main_blog_img, content_type: /\Aimage\/.*\Z/
  
  validates :title, presence: true,
                      length: { minimum: 5 }
end
