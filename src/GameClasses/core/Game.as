package GameClasses.core 
{
	import GameClasses.managers.SoundManager;
	import starling.display.Sprite;
	import starling.events.Event;
	
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
			
			_soundManager = new SoundManager();
			
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			
		}
		
	}

}