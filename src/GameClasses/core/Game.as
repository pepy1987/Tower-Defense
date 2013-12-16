package GameClasses.core 
{
	import GameClasses.managers.SoundManager;
	import starling.display.Sprite;
	
	/**
	 * ...
	 * @author Lazarescu Petru Andrei
	 */
	public class Game extends Sprite 
	{
		private var _soundManager;
		
		public function Game() 
		{
			super();
			
			init();
		}
		
		private function init():void 
		{
			_soundManager = new SoundManager();
		}
		
	}

}