local frame = 150

function onCreatePost()
for i=0,getProperty 'unspawnNotes.length'-1 do
if getPropertyFromGroup('unspawnNotes', i, 'isSustainNote') then
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
end
end
if not isPixel6 or not isPixel7 then 
ShowSplash=true
if rating == 0 then
setTextString('scoreTxt','Score: '..score..' | Misses: '..misses.. ' [?]');
end

makeLuaSprite('cinemadeez1')
makeLuaSprite('cinemadeez2')
setObjectCamera('cinemadeez1', 'hud')
setObjectCamera('cinemadeez2', 'hud')
makeGraphic('cinemadeez2',1280,720,'000000') --Pc pq desgraçado, piranha
makeGraphic('cinemadeez1',1280,720,'000000')
addLuaSprite('cinemadeez1', false)
addLuaSprite('cinemadeez2', false)
setProperty('cinemadeez1.y', 800)
setProperty('cinemadeez2.y', -200)

makeLuaSprite('Health', 'hudd/barv3')
setObjectCamera('Health', 'hud')
addLuaSprite('Health', true)

makeLuaSprite('pfp', 'hudd/player/icon-'..getProperty('iconP1.animation.name'))
setObjectCamera('pfp', 'hud')
addLuaSprite('pfp', true)

makeLuaSprite('quack', 'hudd/quadro')
setObjectCamera('quack', 'hud')
addLuaSprite('quack', true)

makeLuaSprite('iconponente', 'hudd/ICONOPONENTBASE')
setObjectCamera('iconponente', 'hud')
addLuaSprite('iconponente', true)

setProperty('healthBar.scale.x',0.65)
setProperty('healthBar.scale.y',6.7)
setProperty('timeBar.scale.y',6)
setProperty('timeBar.scale.x',0.5)

setProperty('healthBarBG.visible', false);
setProperty('iconP2.visible', false);
setProperty('iconP1.visible', false);
setProperty('timeBarBG.visible', false);
setProperty('timeBar.visible', false);
setProperty('timeTxt.visible', false);
setProperty('oponenteIcon.flipX', false)

setTextFont('scoreTxt', 'Luuminewfont-Regular.ttf')
setTextFont('botplayTxt', 'Luuminewfont-Regular.ttf')
end
end

function onUpdateScore(miss)
setTextString('scoreTxt','Score: '..score..' | Misses: '..misses..' [' ..ratingFC..']');
if miss then
setTextColor('scoreTxt','FF0000');
doTweenColor('scoreTxt_color','scoreTxt','FFFFFF',0.1);
end
end

function onUpdatePost(elapsed)
setObjectOrder('cinemadeez1', 15)
setObjectOrder('cinemadeez2', 15)
setObjectOrder('timeBar', 16)
setObjectOrder('iconponente', 17)
setObjectOrder('oponenteIcon', 18)

setProperty('healthBar.x', 50)
setProperty('scoreTxt.x', -265)
setProperty('scoreTxt.y', 565)
setProperty('pfp.y', 530)
setProperty('quack.y', 530)
setProperty('Health.y', 562)

setProperty('timeBar.y', 690)
setProperty('timeBar.x', 780)

setProperty('botplayTxt.x', 935)
setProperty('botplayTxt.y', 660)

setProperty('oponenteIcon.x', 1135)

setProperty('healthBar.flipX', 1)
setProperty('Health.flipX', 1)
setProperty('quack.flipX', 1)
setProperty('pfp.flipX', 1)

setProperty('timeBar.flipX', 1)
setProperty('iconponente.flipX', 1)
setProperty('oponenteIcon.flipX', 1)
if downscroll then
setProperty('healthBar.x', 647)
setProperty('scoreTxt.x', 265)
setProperty('scoreTxt.y', 125)
setProperty('pfp.y', 0)
setProperty('Health.y', 0)
setProperty('quack.y', 0)

setProperty('timeBar.y', 690)
setProperty('timeBar.x', 115)

setProperty('botplayTxt.x', 935)
setProperty('botplayTxt.y', 660)

setProperty('oponenteIcon.x', 0)

setProperty('healthBar.flipX', 0)
setProperty('Health.flipX', 0)
setProperty('quack.flipX', 0)
setProperty('pfp.flipX', 0)

setProperty('timeBar.flipX', 0)
setProperty('iconponente.flipX', 0)
setProperty('oponenteIcon.flipX', 0)
end
end

function onUpdate()
mal = getProperty('iconP2.animation.name')

makeAnimatedLuaSprite('oponenteIcon',nil, 0, 585)
loadGraphic('oponenteIcon','icons/icon-'..mal, frame)
addAnimation('oponenteIcon','icons/icon-'..mal, {0, 1}, 0, true)
setObjectCamera('oponenteIcon', 'hud')
addLuaSprite('oponenteIcon', true)

setProperty('oponenteIcon.scale.x', getProperty('iconP2.scale.x'))
setProperty('oponenteIcon.scale.y', getProperty('iconP2.scale.y'))

if getProperty('health') > 1.6 then
setProperty('oponenteIcon.animation.curAnim.curFrame', '1')
end
if getProperty('health') < 1.6 and getProperty('health') > 0.4 then
setProperty('oponenteIcon.animation.curAnim.curFrame', '0')
end
end

function onStepHit()
if curStep == 1 then
doTweenY('cinemadeez1', 'cinemadeez1', 655, 2.6, 'expoout');
doTweenY('cinemadeez2', 'cinemadeez2', -95, 2.6, 'expoout');
end
if curStep == 10 then
setProperty('timeBar.visible', true);
end
end

function onEndSong()
setProperty('timeBar.visible', true);
end

function opponentNoteHit(id, data, type, sus)
if sus then
setProperty('dad.holdTimer', 0)
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if ShowSplash then
for splashes = 0,getProperty('grpNoteSplashes.length')-1 do
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.x',0)
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.y',0)
setPropertyFromGroup('grpNoteSplashes',splashes,'scale.x',0.65)
setPropertyFromGroup('grpNoteSplashes',splashes,'scale.y',0.65)
end
elseif not ShowSplash then
for splashes = 0,getProperty('grpNoteSplashes.length')-1 do
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.x',-10000000)
setPropertyFromGroup('grpNoteSplashes',splashes,'offset.y',-20)
end
end
end
