# == Schema Information
#
# Table name: follow_requests
#
#  id           :integer          not null, primary key
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  recipient_id :integer
#  sender_id    :integer
#

class FollowRequest < ApplicationRecord
  # validates(:sender, { :presence => true})
  # validates(:recipient, {
  #   :presence => true,
  #   :uniqueness => { :scope => [:sender_id] }
  # })

  belongs_to(:sender, {
    :class_name => "User",
    :foreign_key => "sender_id"
  })
  # def sender
  #   my_sender_id = self.sender_id

  #   matching_users = User.where({ :id => my_sender_id })

  #   the_user = matching_users.at(0)

  #   return the_user
  # end


  belongs_to(:recipient, {
    :class_name => "User",
    :foreign_key => "recipient_id",
    :required => true
  })
  
  # def recipient
  #   my_recipient_id = self.recipient_id

  #   matching_users = User.where({ :id => my_recipient_id })

  #   the_user = matching_users.at(0)

  #   return the_user
  # end
end
