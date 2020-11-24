# frozen_string_literal: true

# class connects to databse to CRUD data needed, then wraps into the class instance
class Post < ApplicationRecord
  belongs_to :user, class_name: "User"
end
