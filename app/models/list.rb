class List < ActiveRecord::Base
  validates :title, presence: { message: "ToDoリスト名を入力してください"}, length: { maximum: 30, message: "ToDoリストの名称は30文字以内にしてください"}
  has_many :tasks
  accepts_nested_attributes_for :tasks

  def self.search(search)
    return List.all unless search
    List.where(['title LIKE ?', "%#{search}%"])
  end
end
