function onEvent(name,v1,v2)
if name == 'girlevents' then
if v1 == 'BUG11' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
addLuaSprite('flash', true);
setLuaSpriteScrollFactor('flash',0,0)
setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)
doTweenAlpha('flTw','flash',0,0.55,'linear')

setProperty('defaultCamZoom', 1.25)

triggerEvent("Change Character", "DAD", "LuumiRetake")

setProperty('obj7.visible', true)
setProperty('obj16.visible', true)
setProperty('obj15.visible', true)

setProperty('bg.visible', false)
setProperty('yo.visible', false)
setProperty('yeba.visible', false)
setProperty('2.visible', false)
end
if v1 == 'BUG22' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
addLuaSprite('flash', true);
setLuaSpriteScrollFactor('flash',0,0)
setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)
doTweenAlpha('flTw','flash',0,0.55,'linear')

setProperty('defaultCamZoom', 0.75)

setProperty('dadGroup.scale.x',3)
setProperty('dadGroup.scale.y',3)

triggerEvent("Change Character", "DAD", "LuumiRetake")

setProperty('booh.visible', true)

setProperty('obj7.visible', false)
setProperty('obj16.visible', false)
setProperty('obj15.visible', false)

setProperty('bg.visible', false)
setProperty('yo.visible', false)
setProperty('yeba.visible', false)
setProperty('2.visible', false)
end
if v1 == 'BUG33' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
addLuaSprite('flash', true);
setLuaSpriteScrollFactor('flash',0,0)
setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)
doTweenAlpha('flTw','flash',0,0.55,'linear')

setProperty('defaultCamZoom', 0.65)

setProperty('dadGroup.scale.x',1.35)
setProperty('dadGroup.scale.y',1.35)

triggerEvent("Change Character", "DAD", "LuumiRetake")

setProperty('dc.visible', true)

setProperty('booh.visible', false)

setProperty('obj7.visible', false)
setProperty('obj16.visible', false)
setProperty('obj15.visible', false)

setProperty('bg.visible', false)
setProperty('yo.visible', false)
setProperty('yeba.visible', false)
setProperty('2.visible', false)
end
if v1 == 'BUG44' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
addLuaSprite('flash', true);
setLuaSpriteScrollFactor('flash',0,0)
setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)
doTweenAlpha('flTw','flash',0,0.55,'linear')

setProperty('defaultCamZoom', 0.75)

setProperty('boyfriendGroup.visible', false)
setProperty('GFxml.visible', false)

setProperty('dadGroup.scale.x',3.50)
setProperty('dadGroup.scale.y',3.50)

setProperty('boyfriendGroup.x', 350)

triggerEvent("Change Character", "DAD", "LuumiRetake")

setProperty('ll.visible', true)

setProperty('dc.visible', false)

setProperty('booh.visible', false)

setProperty('obj7.visible', false)
setProperty('obj16.visible', false)
setProperty('obj15.visible', false)

setProperty('bg.visible', false)
setProperty('yo.visible', false)
setProperty('yeba.visible', false)
setProperty('yup.visible', false)
setProperty('2.visible', false)
end
if v1 == 'Home' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
addLuaSprite('flash', true);
setLuaSpriteScrollFactor('flash',0,0)
setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)
doTweenAlpha('flTw','flash',0,1.25,'linear')

setProperty('boyfriendGroup.visible', true)
setProperty('GFxml.visible', true)

setProperty('boyfriendGroup.x', 925)

setProperty('dadGroup.scale.x',1.35)
setProperty('dadGroup.scale.y',1.35)

setProperty('defaultCamZoom', 0.75)

triggerEvent("Change Character", "DAD", "LuumiRetake")

setProperty('ll.visible', false)

setProperty('dc.visible', false)

setProperty('booh.visible', false)

setProperty('obj7.visible', false)
setProperty('obj16.visible', false)
setProperty('obj15.visible', false)

setProperty('bg.visible', true)
setProperty('yo.visible', true)
setProperty('yeba.visible', true)
setProperty('yup.visible', true)
setProperty('2.visible', true)
end
if v1 == 'BFCUT' then
setProperty('bfcama.visible', true)

playAnim('bfcama', 'idle', true);
end
if v1 == 'BFCUTend' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
addLuaSprite('flash', true);
setLuaSpriteScrollFactor('flash',0,0)
setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)
doTweenAlpha('flTw','flash',0,0.55,'linear')

setProperty('bg.visible', false)
setProperty('yo.visible', false)
setProperty('yeba.visible', false)
setProperty('yup.visible', false)
setProperty('2.visible', false)
setProperty('bgwhite.visible', true)
setProperty('meupesorna.visible', true)
setProperty('moves.visible', true)
setProperty('yupwhite.visible', true)
setProperty('2white.visible', true)

setProperty('bfcama.visible', false)
setProperty('GFWhithw.visible', true)
setProperty('GFxml.visible', false)

triggerEvent("Change Character", "DAD", "LuumiBlaaaaaaac")
triggerEvent("Change Character", "BF", "BoyfriendWhithw")
end
if v1 == 'BACKTONORMAL' then
makeLuaSprite('flash', '', 0, 0);
makeGraphic('flash',1280,720,'ffffff')
addLuaSprite('flash', true);
setLuaSpriteScrollFactor('flash',0,0)
setProperty('flash.scale.x',2)
setProperty('flash.scale.y',2)
setProperty('flash.alpha',0)
setProperty('flash.alpha',1)
doTweenAlpha('flTw','flash',0,0.55,'linear')

setProperty('bg.visible', true)
setProperty('yo.visible', true)
setProperty('yeba.visible', true)
setProperty('yup.visible', true)
setProperty('2.visible', true)
setProperty('bgwhite.visible', false)
setProperty('meupesorna.visible', false)
setProperty('moves.visible', false)
setProperty('yupwhite.visible', false)
setProperty('2white.visible', false)

setProperty('GFWhithw.visible', false)
setProperty('GFxml.visible', true)

triggerEvent("Change Character", "DAD", "LuumiRetake")
triggerEvent("Change Character", "BF", "bfwuzzy")
end
end
end