package;
import flixel.FlxSprite;
import flixel.system.FlxSound;
import flixel.util.FlxTimer;
import flixel.*;
import flixel.FlxG;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class SalamatScreen extends MusicBeatState
{
	var music:FlxSound;
	var left:Bool = false;
	override function create()
	{
		FlxG.sound.music.stop();
		super.create();
		var thanks:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('menus/salamat'));
		add(thanks);
		FlxG.sound.play(Paths.sound('weekClear'));
		
		var thankss:FlxText = new FlxText(12, FlxG.height - 44, 0, "Thanks for playing", 12);
		thankss.scrollFactor.set();
		thankss.setFormat(Paths.font("GhostKidAOE.otf"), 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(thankss);
		var noproblemo:FlxText = new FlxText(12, FlxG.height - 24, 0, "Go to Freeplay for a Bonus Song!", 12);
		noproblemo.scrollFactor.set();
		noproblemo.setFormat(Paths.font("GhostKidAOE.otf"), 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(noproblemo);

   /*#if mobile
   addVirtualPad(NONE, A);
   #end*/

	}

	override function update(elapsed:Float)
	{
		
		#if mobile
		for (touch in FlxG.touches.list) {
		 if (touch.justPressed && !left) //yes touch :)
		 {
			 left = true;
			 FlxG.sound.playMusic(Paths.music('freakyMenu'));
			 MusicBeatState.switchState(new MainMenuState());
	         }
		}
		#else
	         if (controls.ACCEPT && !left)
		 {
			left = true;
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
			MusicBeatState.switchState(new MainMenuState());
		 }
		#end
	
		super.update(elapsed);
	}
	
}
