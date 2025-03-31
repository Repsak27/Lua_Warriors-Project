--Game stats
local wins = 0
local losses = 0
local ties = 0

local function round()
    --Intro
    print("Welcome to Rock Paper Scissors by The Lua Warriors")
    print([[You know the rules:
    - Scissors cut Paper
    - Paper covers Rock
    - Rock breaks Scissors]])
    print("Enter your choice (rock, paper, or scissors) or q to quit:")

    --Player & CPU choices
    local player_choice = io.read():lower()
    print("")

    --If they want to quit
    if player_choice == "q" then
        return false
    end

    --Invalid choice
    if player_choice ~= "rock" and player_choice ~= "paper" and player_choice ~= "scissors" then
        print("Invalid choice! Please enter rock, paper, or scissors.")
        return true
    end

    --CPU choice
    local choices = {"rock", "paper", "scissors"}
    local cpu_choice = choices[math.random(1, 3)]

    print("You chose: " .. player_choice)
    print("Computer chose: " .. cpu_choice)

    --Show winner
    if player_choice == cpu_choice then
        print("It's a tie!")
        ties = ties + 1
    elseif (player_choice == "rock" and cpu_choice == "scissors") or
        (player_choice == "paper" and cpu_choice == "rock") or
        (player_choice == "scissors" and cpu_choice == "paper") then
        print("You win!")
        wins = wins + 1
    else
        print("Computer wins!")  
        losses = losses + 1
    end

    --Show Score
    print("\nScore:")
    print("Wins: " .. wins)
    print("Losses: " .. losses)
    print("Ties: " .. ties)
    print("")

    --Play again
    while true do
        print("\nWould you like to play again? (y/n)")
        local play_again = io.read():lower()
        
        if play_again == "n" then
            return false
        elseif play_again == "y" then
            return true
        else
            print("Please enter 'y' or 'n'")
        end
    end
end

-- Loop the game
local playing = true
while playing do
    playing = round()
end

print("Thanks for playing!")
