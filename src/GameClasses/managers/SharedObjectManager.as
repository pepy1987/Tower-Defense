package GameClasses.managers 
{
	import flash.net.SharedObject;
	import GameClasses.core.Config;
	/**
	 * ...
	 * @author Andrei Lazarescu
	 */
	public class SharedObjectManager 
	{
		
		public const LOCAL_OBJECT_NAME:String = "TowerDefance";
		
		private var _sharedObject:SharedObject;
		
		public function get sharedObject():SharedObject 
		{
			return _sharedObject;
		}
		
		/**
		 * The only instance of the SharedObjectManager class.
		 */
		private static var _instance:SharedObjectManager = null;
		/**
		 * The only way to access an instance of the GameStates class. The singletone pattern is 
		 * used because there can be only one instance in the application.
		 */
		public static function get instance():SharedObjectManager
		{
			if (!_instance)
			{
				_instance = new SharedObjectManager();
			}
			
			return (_instance as SharedObjectManager);
		}
		
		
		
		
		public function SharedObjectManager()
		{
			_sharedObject = SharedObject.getLocal(LOCAL_OBJECT_NAME);
			
			if (!_sharedObject.data.hasOwnProperty('gameOptions')) 
			{
				//set up the global game options
				_sharedObject.data.gameOptions = { 
					musicVolume: Config.DEFAULT_SOUND_VOLUME,
					sfxVolume: Config.DEFAULT_SOUND_VOLUME
				};
				Config.musicVolume = Config.DEFAULT_SOUND_VOLUME;
				Config.sfxVolume = Config.DEFAULT_SOUND_VOLUME;
			}else
			{
				Config.musicVolume = so.data.gameOptions.musicVolume;
				Config.sfxVolume = so.data.gameOptions.sfxVolume;
			}
		}		
		
	}

}