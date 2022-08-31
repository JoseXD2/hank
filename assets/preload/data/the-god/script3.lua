local lives = 4 --idk why it has to be 4 otherwise you only have 2 lives but eh whatever

function onCreate()
	makeLuaSprite('hhh', 'H', 750, 630, screenHeight / 2 + -100);
	setLuaSpriteScrollFactor('hhh', 1, 1);
	scaleObject('hhh',0.7, 0.3)
	setObjectCamera('hhh', 'hud');
	setObjectOrder('hhh', 999);
    addLuaSprite('hhh', false);

	makeLuaSprite('hd', 'mechanics/life_depleted', 960, 565, screenHeight / 2 + -100);
	setLuaSpriteScrollFactor('hd', 1, 1);
	scaleObject('hd',0.2,0.2)
	setObjectCamera('hd', 'hud');
	setObjectOrder('hd', 999);

	makeLuaSprite('h', 'mechanics/life', 960, 565, screenHeight / 2 + -100);
	setLuaSpriteScrollFactor('h', 1, 1);
	scaleObject('h',0.2,0.2)
	setObjectCamera('h', 'hud');
	setObjectOrder('h', 999);
	addLuaSprite('h', false);

	makeLuaSprite('hd2', 'mechanics/life_depleted', 1030, 565, screenHeight / 2 + -40);
	setLuaSpriteScrollFactor('hd', 1, 1);
	scaleObject('hd2',0.2,0.2)
	setObjectCamera('hd2', 'hud');
	setObjectOrder('hd2', 999);

	makeLuaSprite('h2', 'mechanics/life', 1030, 565, screenHeight / 2 + -40);
	setLuaSpriteScrollFactor('h2', 1, 1);
	scaleObject('h2',0.2,0.2)
	setObjectCamera('h2', 'hud');
	setObjectOrder('h2', 999);
	addLuaSprite('h2', false);

	makeLuaSprite('hd3', 'mechanics/life_depleted', 1100, 565, screenHeight / 2 + 20);
	setLuaSpriteScrollFactor('hd', 1, 1);
	scaleObject('hd3',0.2,0.2)
	setObjectCamera('hd3', 'hud');
	setObjectOrder('hd3', 999);

	makeLuaSprite('h3', 'mechanics/life', 1100, 565, screenHeight / 2 + 20);
	setLuaSpriteScrollFactor('h', 1, 1);
	scaleObject('h3',0.2,0.2)
	setObjectCamera('h3', 'hud');
	setObjectOrder('h3', 999);
	addLuaSprite('h3', false);


end

function onUpdate()
	if getProperty('health') < 0.02 then
		setProperty('health', 50)
		lives = lives - 1
	end

	if lives == 3 then
		removeLuaSprite('h')
		addLuaSprite('hd', false);
	end

	if lives == 2 then
		removeLuaSprite('h2')
		addLuaSprite('hd2', false);
	end

	if lives == 1 then
		removeLuaSprite('h3')
		addLuaSprite('hd3', false);
	end

	if lives == 0 then
		setProperty('health', 0)
	end
end  -- script made by itsascii