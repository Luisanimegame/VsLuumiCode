function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'fazoeli' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NotesNoHeatLifeGoToCyan'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.43');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'fazoeli' then
-- Dead
end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	-- Yeah
end