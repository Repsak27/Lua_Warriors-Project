-- Main menu loop
while true do
    print("\nWelcome to the Lua Warriors Game Collection!")
    print("Choose a game to play:")
    print("1. Wordle")
    print("2. Higher or Lower (Cards)/Number Guessing Game")
    print("3. Quiz Game")
    print("4. Rock Paper Scissors")
    print("5. Tic Tac Toe")
    print("6. Exit")

    local choice = tonumber(io.read())

    if choice == 1 then
        -- Play Wordle
        dofile("Wordle.lua")
    elseif choice == 2 then
        -- Play Higher or Lower
        dofile("HigherLower.lua")
    elseif choice == 3 then
        -- Play Quiz Game
        dofile("quiz_game.lua")
    elseif choice == 4 then
        -- Play Rock Paper Scissors
        dofile("rock_paper_scissors.lua")
    elseif choice == 5 then
        -- Play Tic Tac Toe
        dofile("TicTacToe.lua")
    elseif choice == 6 then
        print("Thanks for playing! Goodbye!")
        break
    else
        print("Invalid choice. Please select a number between 1 and 7.")
    end
end