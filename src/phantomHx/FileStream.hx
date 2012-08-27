package phantomHx;

/**
 * ...
 * @author Julien Beaufils
 */
@:native("FileStream")
extern class FileStream 
{

    public function read():String;
    public function write(data:String):Void;
    public function readLine():String;
    public function flush():Void;
    public function close():Void;
    
}