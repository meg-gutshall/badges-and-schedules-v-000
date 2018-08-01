# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each do |name|
    badges << "Hello, my name is #{name}."
  end
  badges
end

# Alternate solution with #map
# def batch_badge_creator(attendees)
#   attendees.map {|name| "Hello, my name is #{name}."}
# end

# def assign_rooms(attendees)
#   room_assignments = []
#   attendees.each_with_index do |name, index|
#     room_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
#   end
#   room_assignments
# end

def assign_rooms(attendees)
  attendees.each_with_index.map {|name, index| "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
end

def printer(attendees)
  batch_badge_creator(attendees).each { |badge| puts badge }
  assign_rooms(attendees).each { |assignment| puts assignment }
end
