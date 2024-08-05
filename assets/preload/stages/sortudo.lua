function onCreate()
makeLuaSprite('LighterBG', 'stages/sortudo/lightout', -390, -400)
addLuaSprite('LighterBG', false)
scaleObject('LighterBG', 2.2, 2.3)
makeLuaSprite('Lighter2GB', 'stages/sortudo/lightout', -390 + 2500, -400)
addLuaSprite('Lighter2GB', false)
scaleObject('Lighter2GB', 2.2, 2.3)

makeLuaSprite('sim', 'stages/sortudo/wow', 0, 0);
setObjectCamera('sim', 'hud')
addLuaSprite('sim', true)

scrollA()
end

function scrollA()
doTweenX('LighterBGMove','LighterBG', -390 - 2500, 2)
doTweenX('Lighter2GBMove','Lighter2GB', -390, 2)
end

function onTweenCompleted(tag)
if tag == ('Lighter2GBMove') then
scrollB()
end
if tag == ('Lighter2GBMove2') then
scrollA()
end
end

function scrollB()
doTweenX('LighterBGMove2','LighterBG', -390, 0.001)
doTweenX('Lighter2GBMove2','Lighter2GB', -390 + 2500, 0.001)
end