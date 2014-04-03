class Profil < ActiveRecord::Base
  has_attached_file :cours
  validates_attachment_content_type :cours, :content_type => ["application/pdf"]

end
