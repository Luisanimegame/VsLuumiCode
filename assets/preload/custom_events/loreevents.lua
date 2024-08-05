function onEvent(name,v1,v2)
if name == 'loreevents' then
if v1 == 'huh' then
playSound('Roblox Explode', 0.3);
setProperty('parede.alpha', 1)
end
if v1 == 'top' then
playAnim('parede', 'LightOlhadinha', true);
end
if v1 == 'endtop' then
playAnim('parede', 'idle', true);
end
if v1 == 'lightcum' then
setProperty('Kight.alpha', 1)

playAnim('Kight', 'idle', true);
end
if v1 == 'gf' then
setProperty('Kight.alpha', 0)
setProperty('gfGroup.visible', true)
end
end
end