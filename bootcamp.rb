require "./instructor"

instructor1 = Instructor.new({
  first_name: "Ruben",
  nickname: "Rubenavilah",
  strength: "RoR"
})
puts "#{instructor1.first_name} #{instructor1.nickname} #{instructor1.claim_your_strength}"

instructor2 = Instructor.new({
  first_name: "Roxana",
  nickname: "Roxy",
  strength: "HTML, CSS, JS"
  })
puts "#{instructor2.first_name} #{instructor2.last_name} #{instructor2.nickname} #{instructor2.claim_your_strength}"
