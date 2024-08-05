function onEvent(name,v1,v2)
if name == 'Luzzy' then
if v1 == 'DAD' then
doTweenX('reto', 'reto', -700, 2.6, 'expoout');
end
if v1 == 'BF' then
doTweenX('reto', 'reto', 100, 2.6, 'expoout');
end
if v1 == 'NORMAL' then
doTweenX('reto', 'reto', -350, 2.6, 'expoout');
end
if v2 == 'END' then
doTweenAlpha('RetoBye', 'reto', 0, 2.5, 'Linear')
doTweenAlpha('BlackOutBye', 'blackOut', 0, 2.5, 'Linear')
doTweenAlpha('2', '2', 1, 2.5)
end
if v2 == 'START' then
doTweenAlpha('Reto', 'reto', 1, 1.5)
doTweenAlpha('BlackOut', 'blackOut', 0.50, 1.5)
doTweenAlpha('2Bye', '2', 0, 1.5, 'Linear')
end
end
end