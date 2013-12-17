package GameClasses.loader 
{
	import com.greensock.loading.LoaderMax;
	import org.osflash.signals.Signal;
	/**
	 * ...
	 * @author Lazarescu Petru Andrei
	 */
	public class TDLoader 
	{
		private var _onProgress:Signal;
		private var _onComplete:Signal;
		
		private var _queue:LoaderMax;
		
		private var _callBackVector:Vector.<Object>;
		/**
		 * The only instance of the SharedObjectManager class.
		 */
		private static var _instance:TDLoader = null;
		/**
		 * The only way to access an instance of the GameStates class. The singletone pattern is 
		 * used because there can be only one instance in the application.
		 */
		public static function get instance():TDLoader
		{
			if (!_instance)
			{
				_instance = new TDLoader();
			}
			
			return (_instance as TDLoader);
		}
		
		public function TDLoader() 
		{
			initQueue();
		}
		
		private function initQueue():void 
		{
			_onComplete = new Signal();
			_onProgress = new Signal();
			
			_queue = new LoaderMax( { name:"mainQueue",
									  onProgress:_onProgress,
									  onComplete:_onComplete,
									  onError:onErrorHandler,
									  autoLoad:true
									  });
			
			_callBackVector = new Vector.<Object>;
		}
		
	}

}