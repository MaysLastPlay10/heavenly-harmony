package mobile;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxCamera;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;
import options.BaseOptionsMenu;
import options.Option;
import openfl.Lib;

using StringTools;

class AndroidSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Android Controls Settings';
		rpcTitle = 'Android Controls Settings Menu'; //hi, you can ask what is that, i will answer it's all what you needed lol.
    
    var option:Option = new Option('Vpad Opacity', //mariomaster was here again
			'Changes Vpad Opacity -yeah ',
			'padalpha',
			'float',
			0.5);
		option.scrollSpeed = 1.6;
		option.minValue = 0.01;
		option.maxValue = 1;
		option.changeValue = 0.01;
		option.decimals = 2;
		addOption(option);
		
		var option:Option = new Option('Hitbox Opacity', //mariomaster is dead :00000
			'Changes Hitbox opacity -what',
			'hitboxalpha',
			'float',
			0.2);
		option.scrollSpeed = 1.6;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.01;
		option.decimals = 2;
		addOption(option);

		super();
	}

/*
	override function update(elapsed:Float)
	{
		super.update(elapsed);
			#if android
		if (FlxG.android.justReleased.BACK)
		{
			FlxTransitionableState.skipNextTransIn = true;
			FlxTransitionableState.skipNextTransOut = true;
			MusicBeatState.switchState(new options.OptionsState());
	}
		#end
		}
	*/ //why this exists?!?¡
}