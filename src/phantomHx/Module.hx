package phantomHx;

/**
 * ...
 * @author Julien Beaufils
 */

class Module 
{

    public static function module(moduleId:String):Dynamic
    {
        return untyped { require(moduleId); };
    }
    
    public static function getWebPage():WebPage
    {
        return cast untyped { require("webpage").create(); };
    }
    public static function getWebServer():WebServer
    {
        return cast untyped { require("webserver").create(); };
    }
    public static function getFileSystem():FileSystem
    {
        return cast untyped { require("fs"); };
    }
     public static function getSystem():System
    {
        return cast untyped { require("system"); };
    }
    
    
    
}