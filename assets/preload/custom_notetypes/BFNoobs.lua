function onCreate()
for i = 0, getProperty('unspawnNotes.length') -1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BFNoobs' then
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation', true)
setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023')
setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475') 
setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)
end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'BFNoobs' then
runHaxeCode([[
//Have to use Hscript for the animations otherwise the offsets will be fucked completely.
playerThree.playAnim(game.singAnimations[]]..noteData..[[], true)
]])
end
end