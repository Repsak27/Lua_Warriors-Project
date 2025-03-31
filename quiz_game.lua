-- Number guessing game by The Hololu-Lua Squad comprised of Kasper Holm, Joe Minaya, Anthony Giuliano, Julian Taylor, and Steve Njoroge
print("What's your name?")
local playerName = io.read()

local quizTable = {
    {question = "What is 2 + 2?", options = "A. 3  B. 4  C. 5  D. 6", answer = "B"},
    {question = "What is the hardest natural substance in the world", options = "A. Granite  B. Marble  C. Iron  D. Diamond", answer = "D"},
    {question = "Which company was the first to reach 1 trillion dollars", options = "A. Microsoft  B. Apple  C. Amazon  D. Google", answer = "B"},
    {question = "What's the heaviest organ in the human body", options = "A. Brain  B. Liver  C. Skin  D. Heart", answer = "C"},
    {question = "What sport has been played on the moon?", options = "A. Frisbee  B. Soccer  C. Golf  D. Bocce ball", answer = "C"}
}

local uniqueQuestions = {}

local playerAnswer

print("Welcome to the quiz game!")
print("You'll answer 10 multiple choice questions.")
print("Try to get a perfect score!\n")


local questionChoice;

local count = 1

local same = 0

while count <= 5 do
    math.randomseed(os.time())
    questionChoice = math.random(1, 5)

    for j = 1, #uniqueQuestions do
        if uniqueQuestions[j] == questionChoice then
            same = same + 1
        end
    end

    if same == 0 then
        table.insert(uniqueQuestions, questionChoice)
        print(count .. ". " .. quizTable[questionChoice].question)
        print(quizTable[questionChoice].options)
        print("Enter either A, B, C, or D as your answer")
        playerAnswer = io.read()

        if playerAnswer == quizTable[questionChoice].answer then
            print(playerAnswer .. " is correct!\n")
        else
            print(playerAnswer .. " is not correct.")
            print(quizTable[questionChoice].answer .. " was the correct answer.\n")
        end
        count = count + 1
    else
        same = 0
    end

    
end


        

        

