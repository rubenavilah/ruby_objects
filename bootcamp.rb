require "./student"
require "./instructor"
require "./lesson"

@lessons = []
@instructors = []

def create_lesson(subject, instructor)
  @lessons << Lesson.new({
    subject: subject,
    instructor: instructor
    })
end

def create_instructor(params)
  @instructors << Instructor.new(params)
end

def find_instructor(nickname)
  @instructors.each do |i|
    return instructor if instructor.nickname == nickname
  end
end

def print_instructors
  @instructors.each_with_index do |instructor, index|
    puts "#{index}. #{instructor.first_name}: #{instructor.claim_your_strength}"
  end
end

def print_lessons
  @lessons.each_with_index do |lesson, index|
    puts "Lesson Number: #{index} => #{lesson.subject}"
    puts "Lesson instructor: #{lesson.instructor.nickname}"
  end
end

begin
  puts "Welcome to the Ruby Bootcamp"
  puts "1. Create a new instructor"
  puts "2. Create new lesson"
  puts "10. Print lessons"
  puts "11. Print Instructors"
  @user_input = gets.chomp.downcase
  case @user_input
    when "1"
      instructor_params = {}
      puts "Please type the First Name"
      instructor_params[:first_name] = gets.chomp.downcase
      puts "Please type the Last Name"
      instructor_params[:last_name] = gets.chomp.downcase
      puts "Please type the Nickname"
      instructor_params[:nickname] = gets.chomp.downcase
      puts "Please type the Strength"
      instructor_params[:strength] = gets.chomp.downcase
      puts "Please type the Age"
      instructor_params[:age] = gets.chomp.downcase
      create_instructor instructor_params
    when "2"
      if @instructors.any?
        puts "Please type the Subject of the Lesson"
        subject = gets.chomp.downcase
        puts "Please select the id of the instructor"
        print_instructors
        instructor_index = gets.chomp.to_i
        create_lesson subject, @instructors[instructor_index]
      else
        puts "Must exist at least one instructor, so you can create a lesson"
      end
    when "10"
      print_lessons
    when "11"
      print_instructors
  end

end while @user_input != "exit"
