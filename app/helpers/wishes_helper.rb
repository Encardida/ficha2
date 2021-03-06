module WishesHelper

  def user_has_wishes?
    current_wishes = []
    current_user.wishes.each do |w|
      if w.semester_id == Semester.current_semester.id
        current_wishes.push w
      end
    end
    current_wishes.length < 5
  end

  def option_wished(option)
    option.users.include? current_user
  end

  def priority_list
    wishes = current_user.wishes.select { |wish| wish.option.semester == current_semester }

    priorities = []
    wishes.each do |wish|
      x = priorities.push(wish.priority)
    end
    [1,2,3,4,5] - priorities
  end


end
