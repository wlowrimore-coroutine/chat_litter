class Room < ApplicationRecord
  has_many :messages
  broadcasts_to -> (room){ :rooms_list }

  before_destroy :destroy_messages

  # -----------------------------------------------------
  # Private Methods
  # -----------------------------------------------------
  
  private
  
    def destroy_messages
      self.messages.destroy_all
    end
end
