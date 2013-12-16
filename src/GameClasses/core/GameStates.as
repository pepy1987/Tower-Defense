package GameClasses.core
{
	import flash.utils.getQualifiedClassName;
	/**
	 * @author Lazarescu Petru Andrei
	 */
    
    //--------------------------------------
    // IMPORTS
    //--------------------------------------
    
	// Flash
	
	// PureMVC
	
	// Structure
	
	// Custom
	
    //--------------------------------------
    // CLASS
    //--------------------------------------
	
    /**
    * Singletone containing the game states.
    */
    
	public class GameStates
    {
		
        //--------------------------------------
        // Properties - PUBLIC
        //--------------------------------------
		
		/**
		 * The only instance of the GameStates class.
		 */
		private static var _instance:GameStates = null;
		/**
		 * The only way to access an instance of the GameStates class. The singletone pattern is 
		 * used because there can be only one instance in the application.
		 */
		public static function get instance():GameStates
		{
			if (!_instance)
			{
				_instance = new GameStates();
			}
			
			return (_instance as GameStates);
		}
		
		
		public const GAME_LOAD_STATE:String = getQualifiedClassName(this) + ".GAME_LOAD_STATE";
		public const MENU_STATE:String = getQualifiedClassName(this) + ".MENU_STATE";
		public const MAP_SELECT_STATE:String = getQualifiedClassName(this) + ".MAP_SELECT_STATE";
		public const PLAY_STATE:String = getQualifiedClassName(this) + ".PLAY_STATE";
		public const GAME_OVER_STATE:String = getQualifiedClassName(this) + ".GAME_OVER_STATE";
		
	}
	
}