function onCreate()
makeLuaSprite('bg', 'stages/Estacionamento/BG', -350, -120)
scaleObject('bg', 2.25, 2.25);
addLuaSprite('bg', false)

makeLuaSprite('Carro', 'stages/Estacionamento/Car', -350, -120)
scaleObject('Carro', 2.25, 2.25);
addLuaSprite('Carro', false)

makeLuaSprite('Black', 'stages/Estacionamento/BlackEffect', -350, -120)
scaleObject('Black', 2.25, 2.25);
addLuaSprite('Black', true)

makeLuaSprite('Wuz', 'stages/Estacionamento/Lights', -350, -120)
scaleObject('Wuz', 2.25, 2.25);
addLuaSprite('Wuz', true)

makeLuaSprite('CarroLuzzy', 'stages/Estacionamento/CarLight', -350, -120)
scaleObject('CarroLuzzy', 2.25, 2.25);
addLuaSprite('CarroLuzzy', true)

makeLuaSprite('Tree', 'stages/Estacionamento/TreeFront', -350, -120)
scaleObject('Tree', 2.25, 2.25);
addLuaSprite('Tree', true)

makeLuaSprite('blackOut', nil, 0, 0)
makeGraphic('blackOut', screenWidth, screenHeight, '000000')
setObjectCamera('blackOut', 'other')
addLuaSprite('blackOut')

makeLuaSprite('equipe1', 'stages/Estacionamento/Equipe/Pessoas1', -1300, 120)
scaleObject('equipe1', 1.75, 1.75);
addLuaSprite('equipe1', true)

makeLuaSprite('equipe2', 'stages/Estacionamento/Equipe/Pessoas2', -1300, 120)
scaleObject('equipe2', 1.75, 1.75);
addLuaSprite('equipe2', true)

makeLuaSprite('equipe3', 'stages/Estacionamento/Equipe/Pessoas3', -1300, 120)
scaleObject('equipe3', 2.10, 2.10);
addLuaSprite('equipe3', true)

makeLuaSprite('equipe4', 'stages/Estacionamento/Equipe/Pessoas4', -1300, 120)
scaleObject('equipe4', 1.75, 1.75);
addLuaSprite('equipe4', true)
end

function onCreatePost()
setProperty('boyfriendGroup.scale.x',1.25)
setProperty('boyfriendGroup.scale.y',1.25)
setProperty('dadGroup.scale.x',1.05)
setProperty('dadGroup.scale.y',1.05)

setProperty('CarroLuzzy.alpha', 0)
end

function onStepHit()
if curStep == 10 then 
doTweenAlpha('IntroTextBye', 'IntroText', 0, 5, 'Linear')
doTweenAlpha('BlackOutBye', 'blackOut', 0, 5, 'Linear')
end
end

function onSongStart()
noteTweenY("NoteMove1", 4, 75, 0.009, cubeIn)
noteTweenY("NoteMove2", 5, 75, 0.009, cubeIn)
noteTweenY("NoteMove3", 6, 75, 0.009, cubeIn)
noteTweenY("NoteMove4", 7, 75, 0.009, cubeIn)

noteTweenY("NoteMove5", 0, -500, 0.000001, cubeIn)
noteTweenY("NoteMove6", 1, -500, 0.000001, cubeIn)
noteTweenY("NoteMove7", 2, -500, 0.000001, cubeIn)
noteTweenY("NoteMove8", 3, -500, 0.000001, cubeIn)
if downscroll then
noteTweenY("NoteMove1", 4, 535, 0.009, cubeIn)
noteTweenY("NoteMove2", 5, 535, 0.009, cubeIn)
noteTweenY("NoteMove3", 6, 535, 0.009, cubeIn)
noteTweenY("NoteMove4", 7, 535, 0.009, cubeIn)

noteTweenY("NoteMove5", 0, 800, 0.000001, cubeIn)
noteTweenY("NoteMove6", 1, 800, 0.000001, cubeIn)
noteTweenY("NoteMove7", 2, 800, 0.000001, cubeIn)
noteTweenY("NoteMove8", 3, 800, 0.000001, cubeIn)
end
end
