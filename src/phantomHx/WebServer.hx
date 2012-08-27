package phantomHx;

/**
 * ...
 * @author Julien Beaufils
 */
typedef Request =
{
    method:String,
    url:String,
    httpVersion:String,
    headers:Dynamic,
    post:String
};
typedef Response =
{
    headers:Dynamic,
    statusCode:Int,
    write:String->Void,
    close:Void->Void
};

@:native("WebServer")
extern class WebServer 
{

   public function new():Void
   {
       return cast untyped { require(moduleId).create(); };
   }
   public function listen(port:Int, fn:Request->Response-> Void):Dynamic;
   
}