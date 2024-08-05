Ativar = false
TheEnding = false

function onCreatePost()
makeLuaSprite('SpaceBG', 'Result/Spacess', 0)
setObjectCamera('SpaceBG', 'other')
scaleObject('SpaceBG', 1, 1)
addLuaSprite('SpaceBG', false)

makeLuaSprite('SpaceGB2', 'Result/Spacess', 0 + 1286, 0)
setObjectCamera('SpaceGB2', 'other')
scaleObject('SpaceGB2', 1, 1)
addLuaSprite('SpaceGB2', false)

makeAnimatedLuaSprite('luuh', 'Result/LUUMIHEY', 235, -500)
setObjectCamera('luuh', 'other')
addAnimationByPrefix('luuh', 'Pulandinho', 'Pular0', 24, true)
addLuaSprite('luuh', false)

makeLuaSprite('WinningBar', 'Result/Bar', 0, 0)
setObjectCamera('WinningBar', 'other')
scaleObject('WinningBar', 1, 1);
addLuaSprite('WinningBar', false)

makeLuaSprite('RESULTADOS', 'Result/final', 0, 0)
setObjectCamera('RESULTADOS', 'other')
scaleObject('RESULTADOS', 1, 1);
addLuaSprite('RESULTADOS', false)

makeLuaSprite('bahche', 'Result/theendd', 0)
setObjectCamera('bahche', 'other')
scaleObject('bahche', 1, 1)
addLuaSprite('bahche', false)

makeLuaText('sick', '0', 1000, -190, 385);  
setObjectCamera('sick', 'other');
setTextBorder('sick', 2, '5900FF') 
setTextSize('sick', 30);
setTextFont('sick', 'vcr.ttf')
addLuaText('sick');

makeLuaText('good', '0', 1000, -190, 575);  
setObjectCamera('good', 'other');
setTextBorder('good', 2, '5900FF') 
setTextSize('good', 30);
setTextFont('good', 'vcr.ttf')
addLuaText('good');

makeLuaText('bad', '0', 1000, -70, 470);  
setObjectCamera('bad', 'other');
setTextBorder('bad', 2, '5900FF') 
setTextSize('bad', 30);
setTextFont('bad', 'vcr.ttf')
addLuaText('bad');

makeLuaText('shit', '0', 1000, -70, 660);  
setObjectCamera('shit', 'other');
setTextBorder('shit', 2, '5900FF') 
setTextSize('shit', 30);
setTextFont('shit', 'vcr.ttf')
addLuaText('shit');

makeLuaText('NOFS', songName, 1000, -300, 20);  
setObjectCamera('NOFS', 'other');
setTextBorder('NOFS', 2, '5900FF') 
setTextSize('NOFS', 60);
setTextFont('NOFS', 'vcr.ttf')
addLuaText('NOFS');

makeLuaText('DIFF', difficultyName, 1000, -330, 140);  
setObjectCamera('DIFF', 'other');
setTextBorder('DIFF', 2, '5900FF') 
setTextSize('DIFF', 70);
setTextFont('DIFF', 'vcr.ttf')
addLuaText('DIFF');

makeLuaText('compositor', 'By Compositores [Vs Luumi]', 1000, -180, 240);  
setObjectCamera('compositor', 'other');
setTextBorder('compositor', 2, '5900FF') 
setTextSize('compositor', 40);
setTextFont('compositor', 'vcr.ttf')
addLuaText('compositor');

setGraphicSize('luuh', math.floor(getProperty('luuh.width') * 2.5))


setProperty('SpaceBG.alpha', 0);
setProperty('SpaceGB2.alpha', 0);
setProperty('luuh.alpha', 0);
setProperty('WinningBar.alpha', 0);
setProperty('RESULTADOS.alpha', 0);
setProperty('sick.alpha', 0);
setProperty('good.alpha', 0);
setProperty('bad.alpha', 0);
setProperty('shit.alpha', 0);
setProperty('NOFS.alpha', 0);
setProperty('DIFF.alpha', 0);
setProperty('compositor.alpha', 0);
setProperty('bahche.alpha', 0);

scrollA()
end

function scrollA()
doTweenX('SpaceBGMove','SpaceBG', 0 - 1286, 5)
doTweenX('SpaceGB2Move','SpaceGB2', 0, 5)
end

function onTweenCompleted(tag)
if tag == ('SpaceGB2Move') then
scrollB()
end
if tag == ('SpaceGB2Move2') then
scrollA()
end
end

function scrollB()
doTweenX('SpaceBGMove2','SpaceBG', 0, 0.001)
doTweenX('SpaceGB2Move2','SpaceGB2', 0 + 1286, 0.001)
end

function onEndSong()
if not TheEnding then 
doTweenAlpha('hud1', 'healthBar', 0, 1, 'linear') 
doTweenAlpha('hud2', 'Health', 0, 1, 'linear')
doTweenAlpha('hud3', 'pfp', 0, 1, 'linear')
doTweenAlpha('hud4', 'quack', 0, 1, 'linear')
doTweenAlpha('hud5', 'timeBar', 0, 1, 'linear')
doTweenAlpha('hud6', 'cinemadeez1', 0, 1, 'linear')
doTweenAlpha('hud7', 'cinemadeez2', 0, 1, 'linear')
doTweenAlpha('hud8', 'iconponente', 0, 1, 'linear')
doTweenAlpha('hud9', 'oponenteIcon', 0, 1, 'linear')
doTweenAlpha('hud10', 'scoreTxt', 0, 1, 'linear')

runTimer('LuumiEnding', 2, 1) 
Ativar = true
return Function_Stop;
end
return Function_Continue;
end
function onUpdate(elapsed)
if Ativar == true then
if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('enter') then 
objectPlayAnimation('BOTON', 'Pressed', false);
endSong() 
TheEnding = true
end
else
objectPlayAnimation('BOTON', 'nonPress', false);
end
local sicks = getProperty('sicks')
local goods = getProperty('goods')
local bads = getProperty('bads')
local shits = getProperty('shits')

setTextString('sick', ''.. sicks)
setTextString('good', ''.. goods)
setTextString('bad', ''.. bads)
setTextString('shit', ''.. shits)
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'LuumiEnding' then
zoom = getProperty('defaultCamZoom');
setProperty('defaultCamZoom', zoom);
doTweenAlpha('1', 'SpaceBG', 1, 2.5, 'linear') 
doTweenAlpha('2', 'SpaceGB2', 1, 2.5, 'linear')
doTweenAlpha('3', 'luuh', 1, 2.5, 'linear')
doTweenAlpha('4', 'WinningBar', 1, 2.5, 'linear')
doTweenAlpha('5', 'RESULTADOS', 1, 2.5, 'linear')
doTweenAlpha('6', 'sick', 1, 2.5, 'linear')
doTweenAlpha('7', 'good', 1, 2.5, 'linear')
doTweenAlpha('8', 'bad', 1, 2.5, 'linear')
doTweenAlpha('9', 'shit', 1, 2.5, 'linear')
doTweenAlpha('10', 'NOFS', 1, 2.5, 'linear')
doTweenAlpha('11', 'DIFF', 1, 2.5, 'linear')
doTweenAlpha('12', 'compositor', 1, 2.5, 'linear')
doTweenAlpha('13', 'bahche', 1, 2.5, 'linear')

playMusic('Victory', 1, false) 
end
end