function onCreatePost()
makeLuaSprite('bg', 'stages/Lore/BG', -135, 35)
scaleObject('bg', 2, 2);
addLuaSprite('bg', false)

makeAnimatedLuaSprite('parede', 'stages/Lore/ParedeAnim', -135, 35);
addAnimationByPrefix('parede','idle','nada',24,false)
addAnimationByPrefix('parede','LightOlhadinha','a',24,false)
scaleObject('parede', 2, 2);
addLuaSprite('parede', false);

makeLuaSprite('mat', 'stages/Lore/tapete', -135, 35)
scaleObject('mat', 2, 2);
addLuaSprite('mat', false)

makeLuaSprite('drawer', 'stages/Lore/isso ta maior que o cenario pqp', 35, 100)
scaleObject('drawer', 1.66, 1.66);
addLuaSprite('drawer', false)

makeLuaSprite('bed', 'stages/Lore/cama', 35, 100)
scaleObject('bed', 1.66, 1.66);
addLuaSprite('bed', false)

makeAnimatedLuaSprite('Kight', 'stages/Lore/LightAnim', 0, 35);
addAnimationByPrefix('Kight','idle','Light0',24,false)
addAnimationByPrefix('Kight','aaaa','nada0',24,true)
scaleObject('Kight', 1.6, 1.6);
addLuaSprite('Kight', false);

makeLuaSprite('light', 'stages/Lore/lamp', 35, 25)
scaleObject('light', 1.66, 1.66);
addLuaSprite('light', false)

setProperty('Kight.alpha', 0)
setProperty('parede.alpha', 0)
setProperty('gfGroup.visible', false)
end