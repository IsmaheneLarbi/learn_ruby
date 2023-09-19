score = 96

grade = case score
when 0..59 then "Incomplete"
when 60..85 then "Good"
when 86..90 then "Great"
when 91..100 then "Incredible"
end

puts grade
