package;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.addons.transition.FlxTransitionableState;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import lime.app.Application;
import Achievements;
import editors.MasterEditorMenu;
import flixel.input.keyboard.FlxKey;
import flixel.util.FlxTimer;
import flixel.system.FlxSound;
import flixel.addons.display.FlxTiledSprite;

using StringTools;

class MainMenuState extends MusicBeatState
{
	public static var psychEngineVersion:String = '0.3.0h'; //This is also used for Discord RPC
	public static var curSelected:Int = 0;

	var menuItems:FlxTypedGroup<FlxSprite>;
	private var camGame:FlxCamera;
	private var camAchievement:FlxCamera;

	var menubars_top:FlxTiledSprite;

	var menubars_bottom:FlxTiledSprite;

	var checkerboard:FlxTiledSprite;
	
	var LuumiStory:FlxSprite;
	
	var LightFree:FlxSprite;
	
	var Bonnye:FlxSprite;
	
	var optionShit:Array<String> = [
		'story_mode',
		'freeplay',
		'options',
		'credits',
		'lightwuz'
	];

	var magenta:FlxSprite;
	var camFollow:FlxObject;
	var camFollowPos:FlxObject;
	var debugKeys:Array<FlxKey>;

	override function create()
	{
		WeekData.loadTheFirstEnabledMod();
		FirstTimeFreeplay.loadShit();
		trace(FlxG.save.data.firstTimeFreeplay);

		FreeplaySaves.fuckinSet();
		FirstTimeFreeplay.fuckinSet();

		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end
		debugKeys = ClientPrefs.copyKey(ClientPrefs.keyBinds.get('debug_1'));

		camGame = new FlxCamera();
		camAchievement = new FlxCamera();
		camAchievement.bgColor.alpha = 0;

		FlxG.cameras.reset(camGame);
		FlxG.cameras.add(camAchievement);
		FlxCamera.defaultCameras = [camGame];

		transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

		persistentUpdate = persistentDraw = true;

		var yScroll:Float = Math.max(0.15 - (0.05 * (optionShit.length - 4)), 0.1);
		var bg:FlxSprite = new FlxSprite(-80).loadGraphic(Paths.image('luumimenuBG'));
		bg.scrollFactor.set(0, yScroll);
		bg.setGraphicSize(Std.int(bg.width * 1.175));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = ClientPrefs.globalAntialiasing;
		add(bg);

		camFollow = new FlxObject(0, 0, 1, 1);
		camFollowPos = new FlxObject(0, 0, 1, 1);
		add(camFollow);
		add(camFollowPos);

		magenta = new FlxSprite(-80).loadGraphic(Paths.image('luumimenuBG'));
		magenta.scrollFactor.set(0, yScroll);
		magenta.setGraphicSize(Std.int(magenta.width * 1.175));
		magenta.updateHitbox();
		magenta.screenCenter();
		magenta.visible = false;
		magenta.antialiasing = ClientPrefs.globalAntialiasing;
		magenta.color = 0xFFfd719b;
		add(magenta);

		checkerboard = new FlxTiledSprite(Paths.image('checkerboard'), FlxG.width * 3, FlxG.width * 3, true, true);
		checkerboard.scrollFactor.set(0, 0);
		checkerboard.x = -100;
		checkerboard.y = -100;
		checkerboard.antialiasing = false;
		add(checkerboard);

		menubars_top = new FlxTiledSprite(Paths.image('menubars'), FlxG.width * 3, FlxG.width * 3, true, false);
		menubars_top.scrollFactor.set(0, 0);
		menubars_top.antialiasing = false;
		add(menubars_top);

		menubars_bottom = new FlxTiledSprite(Paths.image('menubarsflip'), FlxG.width * 3, FlxG.width * 3, true, false);
		menubars_bottom.scrollFactor.set(0, 0);
		menubars_bottom.y = FlxG.height - 130;
		menubars_bottom.antialiasing = false;
		add(menubars_bottom);

		var phonecords:FlxSprite = new FlxSprite().loadGraphic(Paths.image('phonecord'));
		phonecords.updateHitbox();
		phonecords.screenCenter();
		phonecords.antialiasing = false;
		add(phonecords);

		var LuumiStory:FlxSprite = new FlxSprite().loadGraphic(Paths.image('melu/luumi_telefonadno'));
		LuumiStory.updateHitbox();
		LuumiStory.screenCenter();
		add(LuumiStory);
		
		var LightFree:FlxSprite = new FlxSprite().loadGraphic(Paths.image('melu/ligth_jongado'));
		LightFree.updateHitbox();
		LightFree.screenCenter();
		add(LightFree);
		
		var Bonnye:FlxSprite = new FlxSprite().loadGraphic(Paths.image('melu/bone_settings'));
		Bonnye.updateHitbox();
		Bonnye.screenCenter();
		add(Bonnye);
		
		// magenta.scrollFactor.set();

		menuItems = new FlxTypedGroup<FlxSprite>();
		add(menuItems);

		var scale:Float = 1.55;
		/*if(optionShit.length > 6) {
			scale = 6 / optionShit.length;
		}*/

		for (i in 0...optionShit.length)
		{
			var offset:Float = 115 - (Math.max(optionShit.length, 4) - 4);
			var menuItem:FlxSprite = new FlxSprite(100, ((i * 115)  + offset) - 40);
			menuItem.scale.x = scale;
			menuItem.scale.y = scale;
			menuItem.frames = Paths.getSparrowAtlas('mainmenu/' + optionShit[i]);
			menuItem.animation.addByPrefix('idle', "menu " + optionShit[i] + "0", 12);
			menuItem.animation.addByPrefix('selected', "menu " + optionShit[i] + "S", 12);
			menuItem.animation.play('idle');
			menuItem.ID = i;
			menuItems.add(menuItem);
			var scr:Float = (optionShit.length - 4) * 0.14;
			if(optionShit.length < 6) scr = 0;
			menuItem.scrollFactor.set(0, scr);
			menuItem.antialiasing = false;
			//menuItem.setGraphicSize(Std.int(menuItem.width * 0.58));
			menuItem.updateHitbox();
		}

		FlxG.camera.follow(camFollowPos, null, 1);

		var versionShit:FlxText = new FlxText(12, FlxG.height - 44, 0, "FNF': Luumi v" + psychEngineVersion, 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);
		var versionShit:FlxText = new FlxText(12, FlxG.height - 24, 0, "Friday Night Funkin' v" + Application.current.meta.get('version'), 12);
		versionShit.scrollFactor.set();
		versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(versionShit);

		// NG.core.calls.event.logEvent('swag').send();

		changeItem();

		#if ACHIEVEMENTS_ALLOWED
		Achievements.loadAchievements();
		var leDate = Date.now();
		if (leDate.getDay() == 5 && leDate.getHours() >= 18) {
			var achieveID:Int = Achievements.getAchievementIndex('friday_night_play');
			if(!Achievements.isAchievementUnlocked(Achievements.achievementsStuff[achieveID][2])) { //It's a friday night. WEEEEEEEEEEEEEEEEEE
				Achievements.achievementsMap.set(Achievements.achievementsStuff[achieveID][2], true);
				giveAchievement();
				ClientPrefs.saveSettings();
			}
		}
		#end
		
		#if mobile
		addVirtualPad(UP_DOWN, A_B);
		#end

		if(FlxG.sound.music == null) {
			FlxG.sound.playMusic(Paths.music('freakyMenu'), 0);

			FlxG.sound.music.fadeIn(1, 0, 0.7);
		}

		super.create();
	}

	#if ACHIEVEMENTS_ALLOWED
	// Unlocks "Freaky on a Friday Night" achievement
	function giveAchievement() {
		add(new AchievementObject('friday_night_play', camAchievement));
		FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);
		trace('Giving achievement "friday_night_play"');
	}
	#end

	var selectedSomethin:Bool = false;

	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.8)
		{
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		menubars_top.scrollX -= 1 * 60 * elapsed;
		menubars_bottom.scrollX += 1 * 60 * elapsed;
		checkerboard.scrollX += 1 * 25 * elapsed;
		checkerboard.scrollY -= 1 * 25 * elapsed;

		var lerpVal:Float = CoolUtil.boundTo(elapsed * 7.5, 0, 1);
		camFollowPos.setPosition(FlxMath.lerp(camFollowPos.x, camFollow.x, lerpVal), FlxMath.lerp(camFollowPos.y, camFollow.y, lerpVal));
		
		if (optionShit[curSelected] == 'story_mode')
		{
			changeItem(-1);
			changeItem(1);
		
			LuumiStory.visible = true;
		}
		else
		{
			LuumiStory.visible = false;
		}
		
		if (optionShit[curSelected] == 'freeplay')
		{
			changeItem(-1);
			changeItem(1);
		
			LightFree.visible = true;
		}
		else
		{
			LightFree.visible = false;
		}
		
		if (optionShit[curSelected] == 'options')
		{
			changeItem(-1);
			changeItem(1);
		
			Bonnye.visible = true;
		}
		else
		{
			Bonnye.visible = false;
		}

		if (!selectedSomethin)
		{
			if (controls.UI_UP_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				changeItem(-1);
			}

			if (controls.UI_DOWN_P)
			{
				FlxG.sound.play(Paths.sound('scrollMenu'));
				changeItem(1);
			}

			if (controls.BACK)
			{
				selectedSomethin = true;
				FlxG.sound.play(Paths.sound('cancelMenu'));
				FlxG.sound.music.fadeOut(1);
				MusicBeatState.switchState(new TitleState());
				FlxG.sound.playMusic(Paths.music('TitleScreen'), 0);
				FlxG.sound.music.fadeIn(1, 0, 0.7);
			}

			if (controls.ACCEPT)
			{
				if (optionShit[curSelected] == 'lightwuz')
				{
					CoolUtil.browserLoad('https://youtube.com/@lightwuz?si=SOeFeJW4SlZjM9NO');
				}
				else
				{
					selectedSomethin = true;
					FlxG.sound.play(Paths.sound('confirmMenu'));

					if(ClientPrefs.flashing) FlxFlicker.flicker(magenta, 1.1, 0.15, false);

					menuItems.forEach(function(spr:FlxSprite)
					{
						if (curSelected != spr.ID)
						{
							FlxTween.tween(spr, {alpha: 0}, 0.4, {
								ease: FlxEase.quadOut,
								onComplete: function(twn:FlxTween)
								{
									spr.kill();
								}
							});
						}
						else
						{
							FlxFlicker.flicker(spr, 1, 0.06, false, false, function(flick:FlxFlicker)
							{
								var daChoice:String = optionShit[curSelected];

								switch (daChoice)
								{
									case 'story_mode':
										MusicBeatState.switchState(new StoryMenuState());
									case 'freeplay':
										if (FlxG.save.data.firstTimeFreeplay) MusicBeatState.switchState(new FreeplayState());
										FlxG.sound.music.fadeOut(1);
									case 'options':
										LoadingState.loadAndSwitchState(new options.OptionsState());
								}
							});
						}
					});
				}
			}
		}

		super.update(elapsed);

		menuItems.forEach(function(spr:FlxSprite)
		{
			//spr.screenCenter(X);
		});
	}

	function changeItem(huh:Int = 0)
	{
		curSelected += huh;

		if (curSelected >= menuItems.length)
			curSelected = 0;
		if (curSelected < 0)
			curSelected = menuItems.length - 1;

		menuItems.forEach(function(spr:FlxSprite)
		{
			spr.animation.play('idle');
			spr.updateHitbox();

			if (spr.ID == curSelected)
			{
				spr.animation.play('selected');
				var add:Float = 0;
				if(menuItems.length > 4) {
					add = menuItems.length * 8;
				}
				camFollow.setPosition(0, spr.getGraphicMidpoint().y - add);
			}
		});
	}
}