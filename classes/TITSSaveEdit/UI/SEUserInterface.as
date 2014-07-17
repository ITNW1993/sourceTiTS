package classes.TITSSaveEdit.UI 
{
	import classes.TITSSaveEdit.Data.TiTsCharacterData;
	import classes.TITSSaveEdit.UI.Controls.FluidSettings;
	import classes.UIComponents.MainButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class SEUserInterface extends Sprite
	{
		private var _leftBar:SELeftBar;
		private var _mainDisplay:SEMainDisplay;
		
		public function get newButton():MainButton { return _leftBar.newButton; }
		public function get loadButton():MainButton { return _leftBar.titsButton; }
		public function get importButton():MainButton { return _leftBar.importButton; }
		public function get saveButton():MainButton { return _leftBar.saveButton; }
		
		public function get topText():TextField { return _leftBar.topText; }
		public function get middleText():TextField { return _leftBar.middleText; }
		public function get bottomText():TextField { return _leftBar.bottomText; }
		
		public function SEUserInterface() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			Build();
			setCharacterData(new TiTsCharacterData()); // Inits the UI defaults.
		}
		
		private function Build():void
		{
			_leftBar = new SELeftBar();
			this.addChild(_leftBar);
			
			_mainDisplay = new SEMainDisplay();
			this.addChild(_mainDisplay);
			_mainDisplay.x = 200;
		}
		
		public function hideMain():void
		{
			_mainDisplay.visible = false;
		}
		
		public function showMain():void
		{
			_mainDisplay.visible = true;
		}
		
		public function setCharacterData(char:TiTsCharacterData):void
		{
			_mainDisplay.generalStats.playerName = char.short;
			_mainDisplay.generalStats.level = char.level;
			_mainDisplay.generalStats.xp = char.XPRaw;
			_mainDisplay.generalStats.credits = char.credits;
			_mainDisplay.generalStats.characterClass = char.characterClass;
			_mainDisplay.generalStats.personality = char.personality;
			
			_mainDisplay.coreStats.physique = char._physiqueRaw;
			_mainDisplay.coreStats.reflexes = char._reflexesRaw;
			_mainDisplay.coreStats.aim = char._aimRaw;
			_mainDisplay.coreStats.intelligence = char._intelligenceRaw;
			_mainDisplay.coreStats.willpower = char._willpowerRaw;
			_mainDisplay.coreStats.libido = char._libidoRaw;
			_mainDisplay.coreStats.affinity = char.affinity;
			
			_mainDisplay.combatStats.hpMod = char.HPMod;
			_mainDisplay.combatStats.energyMod = char.energyMod;
			_mainDisplay.combatStats.lust = char.lustRaw;
			_mainDisplay.combatStats.lustVuln = char.lustVuln;
			
			_mainDisplay.resistances.resistances = char.resistances;
			
			_mainDisplay.tailAppearance.tailType = char.tailType;
			_mainDisplay.tailAppearance.tailCount = char.tailCount;
			_mainDisplay.tailAppearance.tailFlags = char.tailFlags;
			_mainDisplay.tailAppearance.tailGenitalArg = char.tailGenital;
			_mainDisplay.tailAppearance.tailGenitalType = char.tailGenitalArg;
			
			_mainDisplay.fluidSettings.cumType = char.cumType;
			_mainDisplay.fluidSettings.girlCumType = char.girlCumType;
			_mainDisplay.fluidSettings.ballFullness = char.ballFullness;
			_mainDisplay.fluidSettings.ballEfficiency = char.ballEfficiency;
			_mainDisplay.fluidSettings.refactoryRate = char.refactoryRate;
			_mainDisplay.fluidSettings.milkType = char.milkType;
			_mainDisplay.fluidSettings.milkMultiplier = char.milkMultiplier;
			_mainDisplay.fluidSettings.milkStorageMultiplier = char.milkStorageMultiplier;
			_mainDisplay.fluidSettings.milkFullness = char.milkFullness;
			_mainDisplay.fluidSettings.milkRate = char.milkRate;
			
			_mainDisplay.generalGender.genitalSpot = char.genitalSpot;
			_mainDisplay.generalGender.minutesSinceCum = char.minutesSinceCum;
			_mainDisplay.generalGender.timesCum = char.timesCum;
			
			_mainDisplay.generalAppearance.femininity = char.femininity;
			_mainDisplay.generalAppearance.tallness = char.tallness;
			_mainDisplay.generalAppearance.thickness = char.thickness;
			_mainDisplay.generalAppearance.tone = char.tone;
			_mainDisplay.generalAppearance.hipRating = char.hipRatingRaw;
			_mainDisplay.generalAppearance.buttRating = char.buttRatingRaw;
			_mainDisplay.generalAppearance.bellyRating = char.bellyRatingRaw;
			
			_mainDisplay.hairAppearance.hairType = char.hairType;
			_mainDisplay.hairAppearance.hairColor = char.hairColor;
			_mainDisplay.hairAppearance.hairLength = char.hairLength;
			
			_mainDisplay.skinAppearance.skinTone = char.skinTone;
			_mainDisplay.skinAppearance.furColor = char.furColor;
			_mainDisplay.skinAppearance.scaleColor = char.scaleColor;
			_mainDisplay.skinAppearance.skinType = char.skinType;
			_mainDisplay.skinAppearance.skinFlags = char.skinFlags;
			
			_mainDisplay.headAppearance.faceType = char.faceType;
			_mainDisplay.headAppearance.faceFlags = char.faceFlags;
			_mainDisplay.headAppearance.tongueType = char.tongueType;
			_mainDisplay.headAppearance.tongueFlags = char.tongueFlags;
			_mainDisplay.headAppearance.lipMod = char.lipMod;
			_mainDisplay.headAppearance.lipColor = char.lipColor;
			_mainDisplay.headAppearance.earType = char.earType;
			_mainDisplay.headAppearance.horns = char.horns;
			_mainDisplay.headAppearance.hornType = char.hornType;
			_mainDisplay.headAppearance.hornLength = char.hornLength;
			
			_mainDisplay.bodyAppearance.armType = char.armType;
			_mainDisplay.bodyAppearance.wingType = char.wingType;
			_mainDisplay.bodyAppearance.legType = char.legType;
			_mainDisplay.bodyAppearance.legFlags = char.legFlags;
			_mainDisplay.bodyAppearance.legCount = char.legCount;
			
			_mainDisplay.cockAppearance.balls = char.balls;
			_mainDisplay.cockAppearance.ballSize = char.ballSizeRaw;
			_mainDisplay.cockAppearance.cockVirgin = char.cockVirgin;
			_mainDisplay.cockAppearance.cocks = char.cocks;
			
			_mainDisplay.vaginaAppearance.clitLength = char.clitLength;
			_mainDisplay.vaginaAppearance.elasticity = char.elasticity;
			_mainDisplay.vaginaAppearance.vaginalVirgin = char.vaginalVirgin;
			_mainDisplay.vaginaAppearance.vaginas = char.vaginas;
			
			_mainDisplay.breastAppearance.nippleColor = char.nippleColor;
			_mainDisplay.breastAppearance.nipplesPerBreast = char.nipplesPerBreast;
			_mainDisplay.breastAppearance.nippleLengthRatio = char.nippleLengthRatio;
			_mainDisplay.breastAppearance.nippleWidthRatio = char.nippleWidthRatio;
			_mainDisplay.breastAppearance.dickNippleMultiplier = char.dickNippleMultiplier;
			_mainDisplay.breastAppearance.dickNippleType = char.dickNippleType;
			_mainDisplay.breastAppearance.breastRows = char.breastRows;
			
			_mainDisplay.assSettings.analVirgin = char.analVirgin;
			_mainDisplay.assSettings.ass = char.ass;
		}
		
		public function getCharacterData():Object
		{
			return new TiTsCharacterData();
		}
		
	}

}