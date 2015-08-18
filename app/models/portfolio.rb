class Portfolio < ActiveRecord::Base
   has_attached_file :image, :styles => { :medium => "500x500", :thumb => "300x300>" }
   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
