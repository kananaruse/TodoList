class List < ActiveRecord::Base
  validates :title, presence: { message: "入力してください"}, length: { maximum: 30, message: "ToDoリストの名称は30文字以内にしてください"}
  has_many :tasks
  accepts_nested_attributes_for :tasks
end
