local xx = 200;
local yy = 550;
local xx2 = 1200;
local yy2 = 600;
local ofs = 50;
local followchars = true;
function onCreate()

    makeAnimatedLuaSprite('r','red', 0, 0)
    addAnimationByPrefix('r','red','Logo',30,true)
    addLuaSprite('r',false)
    scaleObject('r', 5, 2)
    setLuaSpriteScrollFactor('r', 1, 1)
	setObjectCamera('r', 'camOther')

    makeLuaSprite('red HUD', 'find red', 0, 0)
      setLuaSpriteScrollFactor('red HUD', 1, 1)
      scaleObject('red HUD', 1, 1)
      setObjectCamera('red HUD', 'camOther')

      addLuaSprite('red HUD', false)

end

function onCreatePost()
	setProperty("r.alpha", 0.3)
end

function onStepHit()

    if curStep == 120 then
        xx2 = 200;
end
if curStep == 128 then
    xx2 = 1200;
end
if curStep == 640 then
    setProperty("r.alpha", 0.5)
end
if curStep == 896 then
    setProperty("r.alpha", 0.2)
end
if curStep == 904 then
    xx = 1200;
end
if curStep == 912 then
    xx = 200;
end
if curStep == 920 then
    xx = 1200;
end
if curStep == 928 then
    xx = 200;
end
if curStep == 936 then
    xx = 1200;
end
if curStep == 944 then
    xx = 700;
end
if curStep == 960 then
    xx = 200;
    setProperty("r.alpha", 0.3)
end
if curStep == 968 then
    xx = 1200;
end
if curStep == 976 then
    xx = 200;
end
if curStep == 984 then
    xx = 1200;
end
if curStep == 992 then
    xx = 200;
end
if curStep == 1000 then
    xx = 1200;
end
if curStep == 1008 then
    xx = 700;
end
if curStep == 1024 then
    xx = 200;
    setProperty("r.alpha", 0.5)
end
if curStep == 1032 then
    xx = 1200;
end
if curStep == 1040 then
    xx = 200;
end
if curStep == 1048 then
    xx = 1200;
end
if curStep == 1056 then
    xx = 200;
end
if curStep == 1064 then
    xx = 1200;
end
if curStep == 1072 then
    xx = 200;
end
if curStep == 1088 then
    setProperty("r.alpha", 0.2)
end
if curStep == 1092 then
    xx = 1200;
end
if curStep == 1096 then
    xx = 200;
end
if curStep == 1100 then
    xx = 1200;
end
if curStep == 1104 then
    xx = 200;
end
if curStep == 1108 then
    xx = 1200;
end
if curStep == 1112 then
    xx = 200;
end
if curStep == 1116 then
    xx = 1200;
end
if curStep == 1120 then
    xx = 700;
end
if curStep == 1152 then
    xx = 200;
end
end

function onUpdate(elapsed)
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('defaultCamZoom',1)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    songPos = getSongPosition()
  local currentBeat = (songPos/5000)*(curBpm/6.8)
          doTweenAlpha('find red', 'red HUD', 0.5 + 0.8*math.sin((currentBeat+8*0.5)*math.pi), 0.3)
  end
  