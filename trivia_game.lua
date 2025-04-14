-- Trivia game by The Hololu-Lua Squad comprised of Kasper Holm, Joe Minaya, Anthony Giuliano, Julian Taylor, and Steve Njoroge

local quizTable = {
    {question = "What is 2 + 2?", options = "a. 3  b. 4  c. 5  d. 6", answer = "b"},
    {question = "What is the hardest natural substance in the world", options = "a. granite  b. marble  c. iron  d. diamond", answer = "d"},
    {question = "Which company was the first to reach 1 trillion dollars", options = "a. microsoft  b. apple  c. amazon  d. google", answer = "b"},
    {question = "What's the heaviest organ in the human body", options = "a. brain  b. liver  c. skin  d. heart", answer = "c"},
    {question = "What sport has been played on the moon?", options = "a. frisbee  b. soccer  c. golf  d. bocce ball", answer = "c"},
    {question = "A language achieves _____ by avoiding special cases in the use of constructs.", options = "a. orthogonality  b. efficiency  c. generality  d. uniformity", answer = "c"},
    {question = "The lexical structure of a programming language is the structure of its _____.", options = "a. variables  b. tokens  c. comments  d. references", answer = "b"},
    {question = "During its ____ phase, a translator collects sequences of characters from the input program and forms them into tokens.", options = "a. parsing  b. analyzing  c. generating  d. scanning", answer = "d"},
    {question = "Grammar rules are also called ____.", options = "a. productions  b. compilations  c. instructions  d. documentation", answer = "a"},
    {question = "____ are symbols used to distinguish between parts of a rule.", options = "a. Distinguishers  b. Identifiers  c. Metasymbols  d. Abstract characters", answer = "c"},
    {question = "____ languages require all tokens to occur in prespecified locations on the page.", options = "a. Free-format  b. Precise-format  c. Fixed-format  d. Specified-format", answer = "c"},
    {question = "Attempts to make programming languages more reliable led to the development of ____.", options = "a. better documentation  b. strong data typing  c. improved writability  d. increased efficiency", answer = "b"},
    {question = "Which of the following is most closely related to reliability?", options = "a. generality  b. regularity  c. security  d. uniformity", answer = "c"},
    {question = "The fact that C does not allow array types to be the return value of a function indicates a lack of ____ in the language.", options = "a. generality  b. uniformity  c. orthogonality  d. efficiency", answer = "c"},
    {question = "Because C++ requires a semicolon after a class definition but not after a function definition, C++ is said to lack _____.", options = "a. orthogonality  b. security  c. reliability  d. uniformity", answer = "d"},
    {question = "Where were The Lord of the Rings movies filmed?", options = "a. Ireland  b. Iceland  c. New Zealand  d. Australia", answer = "c"},
    {question = "What was the top-grossing movie of 2014?", options = "a. The Hunger Games: Mockingjay Part 1  b. The Lego Movie  c. Captain America: The Winter Soldier  d. Guardians of the Galaxy", answer = "d"},
    {question = "Which actor hasn't played the Joker", options = "a. Jack Nicholson  b. Sean Penn  c. Jared Leto  d. Mark Hamill", answer = "b"},
    {question = "In an Orchestra, which is the largest brass section instrument?", options = "a. Trumpet  b. Tenor  c. French horns  d. Tuba", answer = "d"},
    {question = "The first pop music video released is ____.", options = "a. Bohemian Rhapsody  b. In my feelings  c. Plutomania  d. Man of the woods", answer = "a"},
    {question = "Who has the highest number of gold medals in olympic history?", options = "a. Larisa Latynina  b. Mark Spitz  c. Michael Phelps  d. Saina Nehwal", answer = "c"},
    {question = "What is the National Game of the USA?", options = "a. Tennis  b. Soccer  c. Baseball  d. Basketball", answer = "c"},
    {question = "What is the National Game of India?", options = "a. Kabaddi  b. Hockey  c. Cricket  d. Football", answer = "b"},
    {question = "Which one of these blood types is the rarest?", options = "a. A+  b. O+  c. B-  d. AB-", answer = "d"},
    {question = "Photosynthesis is a process created by?", options = "a. plants  b. animals  c. food  d. cameras", answer = "a"},
    {question = "How many bones are there in the adult human body?", options = "a. 106  b. 156  c. 206  d. 256", answer = "c"},
    {question = "How much of the Earth's surface is covered in water?", options = "a. 20%  b. 40%  c. 50%  d. 70%", answer = "d"},
    {question = "What country produces the most potatoes?", options = "a. China  b. United States  c. Ireland  d. Russia", answer = "a"},
    {question = "Europeans first learned of chocolate from whom?", options = "a. Africans  b. Aztecs  c. East Indians  d. Americans", answer = "b"},
    {question = "World War I ended in ____.", options = "a. 1925  b. 1918  c. 1920  d. 1915", answer = "b"},
    {question = "Through which national park does the Continental Divide not pass?", options = "a. Yellowstone  b. Rocky Mountain  c. Glacier  d. Yosemite", answer = "d"},
    {question = "Who was the first US president to appear on television", options = "a. Richard Nixon  b. Ronald Reagan  c. Abraham Lincoln  d. Franklin Delano Roosevelt", answer = "d"},
    {question = "What is the capital of Illinois?", options = "a. Urbana  b. Streator  c. Springfield  d. Chicago", answer = "c"},
    {question = "Which bird has the largest wingspan?", options = "a. Albatross  b. Condor  c. Swan  d. Pelican", answer = "a"},
    {question = "Which is the closest planet to earth?", options = "a. Mars  b. Jupiter  c. Saturn  d. Venus", answer = "b"},
    {question = "What is the Capital of Spain?", options = "a. Madrid  b. Athens  c. Barcelona  d. Mexico City", answer = "c"},
    {question = "What is the highest-grossing Broadway show of all time?", options = "a. The Lion King  b. Wicked  c. Kinky Boots  d. Hamilton", answer = "a"},
    {question = "Where is recognized as the location of the hottest temperature ever recorded on Earth?", options = "a. Mitribah, Kuwait  b. Death Valley, California  c. Yuma, Arizona  d. Key West, Florida", answer = "b"},
    {question = "What is the oldest major soft drink brand in the United States?", options = "a. Coca Cola  b. Pepsi  c. Dr. Pepper  d. Canada Dry Ginger Ale", answer = "c"},
    {question = "What was the first cash crop in America?", options = "a. Tobacco  b. Corn  c. Sugar Cane  d. Grapes", answer = "a"},
    {question = "The first vaccine for which disease?", options = "a. Chickenpox  b. Polio  c. Measles  d. Smallpox", answer = "d"},
    {question = "Which sea creature has three hearts?", options = "a. Shark  b. Jellyfish  c. Stingray  d. Octopus", answer = "d"},
    {question = "Where did the croissant originate?", options = "a. France  b. Austria  c. Turkey  d. Tokyo", answer = "b"},
    {question = "In what US state does the show Breaking Bad take place", options = "a. Utah  b. Missouri  c. Texas  d. New Mexico", answer = "d"},
    {question = "From which country do French Fries originate?", options = "a. Belgium  b. France  c. USA  d. England", answer = "a"},
    {question = "Who was the first Disney Princess?", options = "a. Cinderella  b. Snow White  c. Aurora  d. Jasmine", answer = "b"},
    {question = "How many islands are in Hawaii?", options = "a. 4  b. 7  c. 48  d. 137", answer = "d"},
    {question = "What was the very first Pixar movie?", options = "a. Wall-E  b. Monsters, Inc.  c. A Bug's Life  d. Toy Story", answer = "d"},
    {question = "Which ocean is the Bermuda Triangle in?", options = "a. Pacific  b. Atlantic  c. Caribbean  d. Indian", answer = "b"},
    {question = "What animal species is the only male that gets pregnant?", options = "a. Dolphin  b. Elephant Seal  c. Sea Turtle  d. Seahorse", answer = "d"}
}

local uniqueQuestions = {}

local playerAnswer

print("Welcome to the trivia game!")
print("You'll answer 10 multiple choice questions.")
print("Try to get a perfect score!\n")


local questionChoice

local count = 1

local same = 0

local correctNum = 0

while count <= 10 do
    math.randomseed(os.time())
    questionChoice = math.random(1, 50)

    for j = 1, #uniqueQuestions do
        if uniqueQuestions[j] == questionChoice then
            same = same + 1
        end
    end

    if same == 0 then
        table.insert(uniqueQuestions, questionChoice)
        print(count .. ". " .. quizTable[questionChoice].question)
        print(quizTable[questionChoice].options)
        print("Enter either a, b, c, or d as your answer")
        playerAnswer = string.lower(io.read())

        if playerAnswer == quizTable[questionChoice].answer then
            print(playerAnswer .. " is correct!\n")
            correctNum = correctNum + 1
        else
            print(playerAnswer .. " is not correct.")
            print(quizTable[questionChoice].answer .. " was the correct answer.\n")
        end
        count = count + 1
    else
        same = 0
    end

    
end


        
print("Your final score is " .. correctNum .. "/10.")
if correctNum == 10 then 
    print("Congratulations!")
end
print("Thanks for playing!")

dofile("mainMenu.lua")
