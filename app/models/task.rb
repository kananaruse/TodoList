class Task < ActiveRecord::Base
  belongs_to :list
  validates :name,
          presence: { message: "入力してください"},
          length: { maximum: 30, message: "ToDoの名称は30文字以内にしてください"}
  scope :finished, -> { where(done: true) }
  def self.search(search)
    return Task.all unless search
    Task.where(['name LIKE ?', "%#{search}%"])
  end
end
