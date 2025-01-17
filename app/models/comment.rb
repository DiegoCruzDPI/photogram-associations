# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  photo_id   :integer
#

class Comment < ApplicationRecord
  # validates(:commenter, { :presence => true })

  belongs_to(:commenter, {
    :class_name => "User",
    :foreign_key => "author_id"
  })
  # def commenter
  #   my_author_id = self.author_id

  #   matching_users = User.where({ :id => my_author_id })

  #   the_user = matching_users.at(0)

  #   return the_user
  # end

  belongs_to(:photo, {
    :class_name => "Photo",
    :foreign_key => "photo_id"
  })
    # def photo
  #   my_photo_id = self.photo_id

  #   matching_photos = User.where({ :id => my_photo_id })

  #   the_photo = matching_photos.at(0)

  #   return the_photo
  # end
end

