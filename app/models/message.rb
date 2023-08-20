class Message < ApplicationRecord
  belongs_to :author, class_name: "User"

  after_create_commit -> {
    broadcast_render_to(:messages, partial: "fetch", locals: {url: self})
  }
end
