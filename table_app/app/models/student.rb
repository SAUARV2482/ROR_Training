class Student < ApplicationRecord
validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
validates :email, uniqueness: true

validates :username, exclusion: { in: %w(test bacancy),
message: "%{value} is reserved." }

validates :first_name, :last_name, presence: true

validates :term_end_date, comparison: { greater_than: :term_start_date }

validates :phone_number, length: { is: 10 }
validates :zipcode, length: { minimum: 6 }

validates :password, length: { in: 6..20 }


before_commit :student_created, on: :create
private
def student_created
  puts "Creating Student"
end
private

after_create :student_created
private
def student_created
  puts "Student Created Successfully"
end

before_save do
  puts "Student data will save in a fraction of time"
end

after_save :age_calculation
private
def age_calculation
  if self.dob.present?
    puts "Data saved successfully"
    age = DateTime.now.year - self.dob.year
    puts "Age of Student is #{age}"
  else
    puts "Age is not calculated"
  end
end
  
  before_commit do
    puts "Commit will be done."
  end
  after_commit do
    puts "Commit successfull."
  end
  
  before_destroy do
    puts "Student will be destroy"
  end
  # around_destroy do
  #   puts "Student is not destroy"
  # end
end