player = {}
player.health = 100
player.size = 100
player.xPos = (love.graphics.getWidth() / 2) - (player.size / 2)
player.yPos = (love.graphics.getHeight() / 2) - (player.size / 2)
player.speed = 200

player.isJumping = true
player.yVelocity = 0
player.jumpHeight = -300

local rectWidth = 100
local rectHeight = 100

function jump()

    player.isJumping = true
    player.yVelocity = player.jumpHeight

end

function love.update(dt)
    -- Gérer le déplacement du rectangle en fonction des touches enfoncées
    
    
    --if love.keyboard.isDown("left") then
    --    player.xPos = player.xPos - player.speed * dt
    --end
    --if love.keyboard.isDown("right") then
    --    player.xPos = player.xPos + player.speed * dt
    --end
    --if love.keyboard.isDown("up") then
    --    player.yPos = player.yPos - player.speed * dt
    --end
    --if love.keyboard.isDown("down") then
    --    player.yPos = player.yPos + player.speed * dt
    --end
    --
    if love.keyboard.isDown("space") and not player.isJumping then
        jump()
    end


    -- Appliquer la gravité
    local gravity = 700
    player.yVelocity = player.yVelocity + gravity * dt

    -- Mettre à jour la position verticale
    player.yPos = player.yPos + player.yVelocity * dt

    -- Si le joueur touche le sol
    if player.yPos > 300 then
        player.yPos = 300
        player.yVelocity = 0
        player.isJumping = false
    end
end

function love.load()

    love.graphics.setBackgroundColor(0.2, 0.4, 0.6)

end

function drawStats() 

    love.graphics.setColor(1, 1, 1, 1)

    local text = "Vie: " .. player.health -- Le texte que vous voulez afficher
    local x = 10 -- Position horizontale
    local y = 10 -- Position verticale
    love.graphics.print(text, x, y)


    -- Définir la couleur du rectangle (en noir)
    love.graphics.setColor(0, 0, 0)

    -- Calculer les coordonnées du centre de la fenêtre
    local windowWidth = love.graphics.getWidth()
    local windowHeight = love.graphics.getHeight()
    local rectWidth = 100
    local rectHeight = 100
    local x = (windowWidth - rectWidth) / 2
    local y = (windowHeight - rectHeight) / 2


end

function love.draw()
    -- Définir la couleur du rectangle (en noir)
    love.graphics.setColor(0, 0, 0)

    -- Dessiner le rectangle à la position (rectX, rectY)
    love.graphics.rectangle("fill", player.xPos, player.yPos, player.size, player.size)

    -- Déssine l'interface au dessus du reste
    drawStats()

end
