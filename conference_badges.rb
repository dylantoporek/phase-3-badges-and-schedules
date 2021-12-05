# Write your code here.

def badge_maker(name)
    badge = "Hello, my name is #{name}."
    badge
end

def batch_badge_creator(names_array)
    badges = names_array.map{|name| badge_maker(name)}
    badges
end

def assign_rooms(names_array)
    room_assignments = names_array.map.with_index do |name, index|
        assigner = index + 1
        "Hello, #{name}! You'll be assigned to room #{assigner}!"
    end
    room_assignments
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    badges.each{|badge| puts "#{badge}"}
    assignments = assign_rooms(attendees)
    assignments.each{|assignment| puts "#{assignment}"}
end