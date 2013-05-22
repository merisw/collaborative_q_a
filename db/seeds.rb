User.destroy_all
QAndA.destroy_all

question_partial = "What is the purpose of "
things = ["apples", "pizza", "space travel", "life", "gravity", "crop rotation",
         "rainbows", "whistling", "waterfalls", "progressive rock"
        ]
answer = "I haven't thought about that yet"

(1..things.size).to_a.each do |n|
  @user = User.create(:email => "user#{n}@example.com", :password => "password")
  @user.confirm!
  #Create a question from each user.
  @user.q_and_as.create(question: question_partial + things[n-1], answer: answer)
end