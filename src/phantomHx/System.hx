package phantomHx;

/**
 * ...
 * @author Julien Beaufils
 */
typedef OS={architecture:String,name:String,version:String}
@:native("System")
extern class System 
{
    public var platform:String;
    public var os:OS;
    public var env:Dynamic;
    public var args:Array<String>;
}