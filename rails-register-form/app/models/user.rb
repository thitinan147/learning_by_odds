class User < ApplicationRecord
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :birthDay, presence: true
  validates :gender, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }
end
