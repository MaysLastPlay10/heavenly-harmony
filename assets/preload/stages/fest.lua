local xx = 465.00
local yy = 500
local xx2 = 900
local yy2 = 500
local ofs = 50
local followchars = true

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg/morningbg', -600, -200)
	makeLuaSprite('stands', 'bg/morningstands', -600, -200)
	makeLuaSprite('stage', 'bg/morningstage', -600, -200)

	makeLuaSprite('bopbg', 'bg/bgboppers', -600, -200)
	makeLuaSprite('bopfg', 'bg/fgboppers', -600, -200)
	
	addLuaSprite('bg', false)
	addLuaSprite('stands', false)
	addLuaSprite('bopbg', false)
	addLuaSprite('stage', false)
	addLuaSprite('bopfg', true)
	
end

function onUpdate()
	if followchars == true then
        if mustHitSection == false then
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
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
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
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
		else
			triggerEvent('Camera Follow Pos','','')
		end
end

function onBeatHit()
	--BG chars boppin!
	setProperty('bopbg.y',getProperty('bopbg.y')+5)
	doTweenY('charbounce1','bopbg',getProperty('bopbg.y')-5,0.15,'circOut')
	setProperty('bopfg.y',getProperty('bopfg.y')+20)
	doTweenY('charbounce2','bopfg',getProperty('bopfg.y')-20,0.15,'circOut')
end