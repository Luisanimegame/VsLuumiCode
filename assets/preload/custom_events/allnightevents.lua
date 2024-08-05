function onEvent(name,v1,v2)
if name == 'allnightevents' then
if v1 == 'P1' then
doTweenX('equipe1', 'equipe1', 2000, 9.75);
onTweenCompleted('equipe1.alpha', 0);
end
if v1 == 'P2' then
doTweenX('equipe2', 'equipe2', 2000, 11.25);
onTweenCompleted('equipe2.alpha', 0);
end
if v1 == 'P3' then
doTweenX('equipe3', 'equipe3', 2000, 9.75);
onTweenCompleted('equipe3.alpha', 0);
end
if v1 == 'P4' then
doTweenX('equipe4', 'equipe4', 2000, 11.25);
onTweenCompleted('equipe4.alpha', 0);
end
if v1 == 'WUZ' then
setProperty('CarroLuzzy.alpha', v2)
end
if v1 == 'CAR' then
doTweenX('wuzzy', 'CarroLuzzy', -2000, 3.5, 'expoin');
doTweenX('Carro', 'Carro', -2000, 3.5, 'expoin');
doTweenAlpha('yay','CarroLuzzy',0,2.85,'expoin')
onTweenCompleted('Carro.alpha', 0);
end
end
end