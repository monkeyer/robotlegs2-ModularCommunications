package actions
{
	import flash.events.Event;
	
	public class TextMessageEvent extends Event
	{
		static public const TEXT_MESSAGE:String = "textMessage";
		
		public function TextMessageEvent(type:String, message:String, channel:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_message = message;
			_channel = channel;
		}
		
		private var _message:String;
		public function get message():String { return _message; }
		
		private var _channel:String;
		public function get channel():String { return _channel; }
		
		override public function clone():Event
		{
			return new TextMessageEvent( type, message, channel, bubbles, cancelable );
		}
	}
}