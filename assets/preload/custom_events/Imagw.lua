function onEvent(name,v1,v2)
if name == 'Imagw' then
makeLuaSprite('Imagw', v1, 0, 0)
setObjectCamera('Imagw', 'other')
screenCenter('Imagw', 'xy');
addLuaSprite('Imagw', false)

doTweenAlpha('Imagem', 'Imagw', 0, v2, 'linear')
end
end