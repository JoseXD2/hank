function onCreate()
    makeLuaSprite('hhh', 'H', 750, 630, screenHeight / 2 + -100);
	setLuaSpriteScrollFactor('hhh', 1, 1);
	scaleObject('hhh',0.7, 0.3)
	setObjectCamera('hhh', 'hud');
	setObjectOrder('hhh', 999);
    addLuaSprite('hhh', false);

    makeLuaSprite('g', 'gray_bg', -700, -200)
	setLuaSpriteScrollFactor('g', 1, 1)
	scaleObject('g', 1.7, 1.7)
    setObjectCamera('g', 'camGame')

    addLuaSprite('g', false)

    
	
end
function onCreatePost()
    setProperty('timeBar.x', 760)
    setProperty('timeBarBG.x', 760)
    setProperty('timeTxt.x', 760)


	
	setProperty('scoreTxt.visible', false)

	setProperty('healthBarBG.visible', false)
	setProperty('healthBar.x', 770)
	setProperty('healthBar.y', 637)
	scaleObject('healthBar', 0.62, 3)

	setProperty("iconP2.alpha", 0)
	setProperty("iconP1.alpha", 0)
	setProperty("health",getProperty('health') +2)

	makeLuaText("modder", "Fan-made Gameplay by OVERNAI", 500, 30, 50)
    setTextAlignment("modder", "left")
    addLuaText("modder")

	makeLuaText("message", "Fan-made Vocal by Miketama", 500, 30, 50)
    setTextAlignment("message", "left")
    addLuaText("message")

    makeLuaText("engineText", "Art and Sprite by DozenRahyz ", 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		setProperty('modder.x', 180)
		setProperty('modder.y', 20)
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end

    function goodNoteHit()
      health = getProperty('health')
        setProperty('health', health- 0.022);
    end
