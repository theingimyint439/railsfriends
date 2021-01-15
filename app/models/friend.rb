class Friend < ApplicationRecord
   belongs_to :user
   has_one_attached :image

   def self.search(search)
  if search
    find(:all, :conditions => ['first_name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end

