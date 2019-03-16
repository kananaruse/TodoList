List.create(:title => "Task 0", check: "ToDoがありません", :deadline => Date.today)

1.upto(9) do |n|
  List.create(:title => "Task #{n}", check: "ToDoがありません", :deadline => Date.today)
end
