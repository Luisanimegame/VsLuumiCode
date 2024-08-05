function onCreatePost()
-- House
makeLuaSprite('bg', 'stages/WuzzyHouse/Tage', -350, -120)
scaleObject('bg', 2.25, 2.25);
addLuaSprite('bg', false)

makeLuaSprite('yo', 'stages/WuzzyHouse/Carioquinha', -350, -120)
scaleObject('yo', 2.25, 2.25);
addLuaSprite('yo', false)

makeLuaSprite('yeba', 'stages/WuzzyHouse/Bruzih', -350, -120)
scaleObject('yeba', 2.25, 2.25);
addLuaSprite('yeba', false)

makeLuaSprite('yup', 'stages/WuzzyHouse/MESAWOOOOW', -350, -120)
scaleObject('yup', 2.25, 2.25);
addLuaSprite('yup', true)

makeLuaSprite('bgwhite', 'stages/WuzzyHouse/TageWhithw', -350, -120)
scaleObject('bgwhite', 2.25, 2.25);
addLuaSprite('bgwhite', false)

makeLuaSprite('meupesorna', 'stages/WuzzyHouse/CarioquinhaWhithw', -350, -120)
scaleObject('meupesorna', 2.25, 2.25);
addLuaSprite('meupesorna', false)

makeLuaSprite('moves', 'stages/WuzzyHouse/BruzihWhithw', -350, -120)
scaleObject('moves', 2.25, 2.25);
addLuaSprite('moves', false)

makeLuaSprite('yupwhite', 'stages/WuzzyHouse/MESAWOOOOWWhithw', -350, -120)
scaleObject('yupwhite', 2.25, 2.25);
addLuaSprite('yupwhite', true)

makeAnimatedLuaSprite('GFxml', 'characters/GFYuumiNew', 850, -165);
addAnimationByPrefix('GFxml','idle','gfidle',24,true)
scaleObject('GFxml', 1.90, 1.90);
addLuaSprite('GFxml', true);

makeAnimatedLuaSprite('GFWhithw', 'characters/Sprites_com_efeito/GIRL', 850, -165);
addAnimationByPrefix('GFWhithw','idle','gfidle',24,true)
scaleObject('GFWhithw', 1.90, 1.90);
addLuaSprite('GFWhithw', true);

makeLuaSprite('blackOut', nil, 0, 0)
makeGraphic('blackOut', screenWidth, screenHeight, '000000')
setObjectCamera('blackOut', 'hud')
addLuaSprite('blackOut')

makeLuaSprite('2', 'stages/WuzzyHouse/Wuz', -350, -120)
scaleObject('2', 2.25, 2.25);
addLuaSprite('2', true)

makeLuaSprite('2white', 'stages/WuzzyHouse/WuzWhithw', -350, -120)
scaleObject('2white', 2.25, 2.25);
addLuaSprite('2white', true)

makeLuaSprite('reto', 'stages/FORTE', -350, -120)
scaleObject('reto', 2.25, 2.25);
addLuaSprite('reto', true)

makeAnimatedLuaSprite('bfcama', 'BoyfriendCutscene', 0, 0);
setObjectCamera('bfcama', 'hud')
addAnimationByPrefix('bfcama','idle','CUTs',12,false)
addLuaSprite('bfcama', false);

-- Vs Kito
makeLuaSprite('obj7', 'stages/WuzzyHouse/Extras/kito/bg', -1045, -543)
scaleObject('obj7', 2.4, 2.4)
addLuaSprite('obj7', false)

makeAnimatedLuaSprite('obj16', 'stages/WuzzyHouse/Extras/kito/xokitoluumilive', 1150, 450)
addAnimationByPrefix('obj16', 'anim', 'idle0', 24, true)
scaleObject('obj16', 1.5, 1.5)
addLuaSprite('obj16', true)

makeAnimatedLuaSprite('obj15', 'stages/WuzzyHouse/Extras/kito/dglluumilive', 1250, 480)
addAnimationByPrefix('obj15', 'anim', 'idle0', 24, true)
scaleObject('obj15', 1.5, 1.5)
addLuaSprite('obj15', true)

-- MrBeast MeatCanyon
makeLuaSprite('booh', 'stages/WuzzyHouse/Extras/MrBeastMeatCanyon DGL-Effort/stagemback', -600, -225)
scaleObject('booh', 1, 1);
addLuaSprite('booh', false)

-- Vs Socials
makeLuaSprite('dc', 'stages/WuzzyHouse/Extras/social/discord_stage', -600, -100);
addLuaSprite('dc', false);

-- Miguel Sayz
makeLuaSprite('ll', 'stages/WuzzyHouse/Extras/sky', -600, -100);
addLuaSprite('ll', false);

-- Programação
setProperty('blackOut.alpha', 0)
setProperty('reto.alpha', 0)

setProperty('ll.visible', false)

setProperty('dc.visible', false)

setProperty('booh.visible', false)

setProperty('obj7.visible', false)
setProperty('obj16.visible', false)
setProperty('obj15.visible', false)

-- Hard Programação
setProperty('bfcama.visible', false)
setProperty('GFWhithw.visible', false)

setProperty('bgwhite.visible', false)
setProperty('meupesorna.visible', false)
setProperty('moves.visible', false)
setProperty('yupwhite.visible', false)
setProperty('2white.visible', false)
end