math.randomseed(os.time())

--Word Bank
local dictionary = {"apple", "grape", "mango", "peach", "berry", "album", "north", "music", "river", "water", "field", "color", "video", "party", "image", "coach", "march", "state", "zebra", "state", "april", "squat", "point", "major", "boxer", "above"}
local secret_word = dictionary[math.random(#dictionary)]
local max_attempts = 6

local function check_guess(guess, secret)
    local result = {}
    local secret_used = {}
    local guess_used = {}

    -- First function: Check for correct positions (Green)
    for i = 1, #guess do
        if guess:sub(i, i) == secret:sub(i, i) then
            result[i] = "G"
            secret_used[i] = true
            guess_used[i] = true
        end
    end

    -- Second function: Scan for misplaced letters (Yellow)
    for i = 1, #guess do
        if not guess_used[i] then
            for j = 1, #secret do
                if not secret_used[j] and guess:sub(i, i) == secret:sub(j, j) then
                    result[i] = "Y"
                    secret_used[j] = true
                    break 
                end
            end
        end
    end

    -- Show remaining letters as incorrect (Gray)
    for i = 1, #guess do
        if not result[i] then
            result[i] = "X"
        end
    end

    return table.concat(result, " ")
end

-- Title of Game print statement
print("Welcome to Wordle (Lua Edition!) Guess the 5-letter word.")

-- Attempt Functionality
for attempt = 1, max_attempts do
    io.write("Attempt ".. attempt .. "/" .. max_attempts .. ": ")
    local guess = io.read():lower()

    if #guess ~= 5 then
        print("Please enter a 5-letter word.")
    else 
        local feedback = check_guess(guess, secret_word)
        print("Feedback: " .. feedback)

        if guess == secret_word then
            print("Congratulations! You guessed the word correctly.")
            dofile("mainMenu.lua") 
        end
    end
end 

--End of Game print statement
print("Game Over! The correct word was: ".. secret_word)

dofile("mainMenu.lua")
