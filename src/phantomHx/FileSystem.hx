package phantomHx;

/**
 * ...
 * @author Julien Beaufils
 */

@:native("FileSystem")
extern class FileSystem 
{
    public function new():Void;
    public var separator :String;
    public var workingDirectory:String;
    public function list(path:String):Array<String>;
    public function absolute(path:String):String;
    public function exists(path:String):Bool;
    public function isDirectory(path:String):Bool;
    public function isFile(path:String):Bool;
    public function isAbsolute(path:String):Bool;
    public function isExecutable(path:String):Bool;
    public function isReadable(path:String):Bool;
    public function isWritable(path:String):Bool;
    public function isLink(path:String):Bool;
    public function readLink(path:String):String;
    public function changeWorkingDirectory(path:String):Void;
    public function makeDirectory(path:String):Void;
    public function makeTree(path:String):Void;
    public function removeDirectory(path:String):Void;
    public function removeTree(path:String):Void;
    public function copyTree(source:String, destination:String):Void;
    public function open(path:String, mode:String):FileStream;
    public function read(path:String):String;
    public function write(path:String, content:String, mode:String):Void;
    public function size(path:String):Int;
    public function remove(path:String):Void;
    public function copy(source:String, destination:String):Void;
    public function move(source:String, destination:String):Void;
    public function touch(path:String):Int;
    
    
}