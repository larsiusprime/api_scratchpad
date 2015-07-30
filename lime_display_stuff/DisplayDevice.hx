package lime.system;
import lime.math.Vector2;

/**
 * ...
 * @author larsiusprime
 */
class DisplayDevice {

	/**STATIC**/
	
	public static var numDisplays(get, null):Int;
	public static var primaryDisplay(get, null):DisplayDevice;
	
	/**
	 * Sync with the OS to get the current display device information
	 */
	
	public static function syncDisplays():Void {
		
		//TODO: 
		//just a stub for now:
		__displays = [];
		__displays.push(new DisplayDevice("fake_device", 0));
		
		for (d in __displays) {
		
			d.sync();
			
		}
	}
	
	/**
	 * Get the total number of connected displays
	 * @return
	 */
	
	public static function get_numDisplays():Int {
		
		if (__displays == null) {
			
			sync();
			
		}
		
		if (__displays != null) {
			
			return __displays.length;
			
		}
		
		return 0;
		
	}
	
	/**
	 * Get the display device with the given id
	 * @param	id
	 * @return
	 */
	
	public static function get(id:Int):DisplayDevice {
		
		if (__displays == null) {
			
			sync();
			
		}
		
		if (__displays == null || __displays.length == 0 || id < 0 || id >= __displays.length) return null;
		
		return __displays[id];
		
	}
	
	public static function getAll():Array<DisplayDevice> {
		
		//TODO: do I need to clone the DisplayDevices themselves or is that overkill?
		return __displays.copy();
		
	}
	
	private static var __displays:Array<DisplayDevice>;
	
	/**INSTANCE**/
	
	/**The name of the device, such as "Samsung SyncMaster P2350", "iPhone 6", "Occulus Rift DK2", etc.**/
	public var name(default, null):String;
	
	/**Which number is assigned to the display device by the OS**/
	public var id(default, null):Int;
	
	/**Whether this device is currently powered on and displaying visuals**/
	public var isActive(default, null):Bool;
	
	/**Which (left-to-right) position the OS thinks this display is at**/
	public var displayOrder(default, null):Int;
	
	/**Horizontal resolution / Vertical resolution**/
	public var aspectRatio(get, null):Float;
	
	/**Number of horizontal and vertical pixels currently being displayed**/
	public var resolution(default, null):ConstVector2;
	
	private function new(name:String, id:Int) {
		
		this.name = name;
		this.id = id;
		
		resolution = new Vector2();
		
		sync();
	}
	
	
	/**
	 * Updates this object's data with the latest information from the OS about the device
	 */
	public function sync():Void {
		
		//TODO: stub values for now
		resolution.x = 1024;
		resolution.y = 768;
		
		isActive = true;
		displayOrder = 0;
		
	}
	
	/**GET / SET**/
	
	private function get_aspectRatio():Float {
		
		if (resolution.y != 0) {
		
			return resolution.x / resolution.y;
		
		}
		
		return 0;
	}
	
}

abstract ConstVector2 (Vector2) from Vector2
{
	public inline function new (x:Float = 0, y:Float = 0) this = new Vector2(x, y);
	
	public var x(get, never):Float;
	public var y(get, never):Float;
	
	inline function get_x ():Float return this.x;
	inline function get_y ():Float return this.y;
}