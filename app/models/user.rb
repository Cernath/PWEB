class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_attached_file :avatars,{
    :styles => {
      :thumb => ["50x50#", :png],
      :medium => ["100x100#", :png],
      :large => ["300x300>", :png]
    },
    :convert_options => {
      :thumb => "-gravity Center -crop 50x50+0+0",
      :thumb => "-gravity Center -crop 100x100+0+0",
    }
  }
  has_attached_file :cvs
  validates_attachment_content_type :avatars, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  validates_attachment_content_type :cvs, :content_type => ["application/pdf","application/pdf","application/pdf"]

   
end
