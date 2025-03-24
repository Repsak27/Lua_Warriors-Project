-- Creation of game board
local gameBoard = {
    { " ", " ", " " },
    { " ", " ", " " },
    { " ", " ", " " }
}

-- player who starts is always X
local currentPlayer = "X"

-- print game board

local function printGameBoard()
    print("  1   2   3")  -- Column labels to make it easier for players
    for i = 1, 3 do
        print(i .. " " .. table.concat(gameBoard[i], " | "))
        if i < 3 then
            print("  ----------")
        end
    end
end

-- check if player has won game
local function checkWinner()
    for i = 1, 3 do
        -- this checks rows and columns
        if (gameBoard[i][1] == currentPlayer and gameBoard[i][2] == currentPlayer and gameBoard[i][3] == currentPlayer) or
            (gameBoard[1][i] == currentPlayer and gameBoard[2][i] == currentPlayer and gameBoard[3][i] == currentPlayer) then
            return true
        end
    end
    -- this checks the diagonals
    if (gameBoard[1][1] == currentPlayer and gameBoard[2][2] == currentPlayer and gameBoard[3][3] == currentPlayer) or
        (gameBoard[1][3] == currentPlayer and gameBoard[2][2] == currentPlayer and gameBoard[3][1] == currentPlayer) then
        return true
    end
    return false
end

-- checks for tie
local function checkTie()
    for i = 1, 3 do
        for j = 1, 3 do
            if gameBoard[i][j] == " " then
                return false
            end
        end
    end
    return true
end

-- regular game loop
while true do
    printGameBoard()
    print("Player " .. currentPlayer .. "'s turn")
    print("Enter row (1-3) and column (1-3):")
    
    local row = tonumber(io.read())
    if not row or row < 1 or row > 3 then
        print("Invalid row! Please enter a number between 1 and 3.")
        goto continue
    end
    
    local col = tonumber(io.read())
    if not col or col < 1 or col > 3 then
        print("Invalid column! Please enter a number between 1 and 3.")
        goto continue
    end

    if gameBoard[row][col] == " " then
        gameBoard[row][col] = currentPlayer
        if checkWinner() then
            printGameBoard()
            print("Player " .. currentPlayer .. " wins!")
            break
        end
        if checkTie() then
            printGameBoard()
            print("It's a tie!")
            break
        end
        if currentPlayer == "X" then
            currentPlayer = "O"
        else
            currentPlayer = "X"
        end
    else
        print("That position is already taken! Try again.")
    end
    
    ::continue::
end
