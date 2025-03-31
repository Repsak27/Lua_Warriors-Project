math.randomseed(os.time())

-- Function to play the Higher or Lower card game
function playHigherLower()
    local card = math.random(1, 13) -- Simulating a deck with card values 1 to 13
    local attempts = 0
    local guess
    
    print("Welcome to Higher or Lower!")
    print("Guess a card (1-13):")
    
    while true do
        guess = tonumber(io.read())
        attempts = attempts + 1
        
        if guess == card then
            print("Congratulations! You guessed the card in " .. attempts .. " tries.")
            break
        elseif guess < card then
            print("Go Higher!")
        else
            print("Go Lower!")
        end
    end
end

-- Function to play the Number Guessing game
function playNumberGuess()
    local number = math.random(1, 100)
    local attempts = 0
    local guess
    
    print("Welcome to the Number Guessing Game!")
    print("Guess a number between 1 and 100:")
    
    while true do
        guess = tonumber(io.read())
        attempts = attempts + 1
        
        if guess == number then
            print("You got it! The number was " .. number .. ". It took you " .. attempts .. " tries.")
            break
        elseif guess < number then
            print("Try a higher number!")
        else
            print("Try a lower number!")
        end
    end
end

-- Main game loop
while true do
    print("Choose a game:")
    print("1. Higher or Lower (Cards)")
    print("2. Number Guessing Game")
    print("3. Exit")
    
    local choice = tonumber(io.read())
    
    if choice == 1 then
        playHigherLower()
    elseif choice == 2 then
        playNumberGuess()
    elseif choice == 3 then
        print("Thanks for playing!")
        break
    else
        print("Invalid choice, please select 1, 2, or 3.")
    end
end
