package phantomHx;

/**
 * ...
 * @author Julien Beaufils
 */
typedef Version = { major : Int, minor : Int, patch:Int }
@:native("phantom")
extern class Phantom 
{

    public static var args:Array<String>;
    public static var libraryPath :String;
    public static var scriptName  :String;
    public static var version   :Version;
    public static function exit():Void;
    public static function injectJs(filename:String):Void;
}