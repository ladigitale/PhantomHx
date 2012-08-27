package phantomHx;

/**
 * ...
 * @author Julien Beaufils
 */
typedef ClipRect = { top: Int, left: Int, width: Int, height: Int}
typedef ViewportSize  = {width: Int, height: Int}
typedef WebPageSettings = 
{
    javascriptEnabled : Bool, 
    loadImages : Bool, 
    localToRemoteUrlAccessEnabled  : Bool, 
    userAgent : String, 
    userName : String,
    passWord : String,
    XSSAuditingEnabled  : Bool,
    webSecurityEnabled  : Bool
}

@:native("WebPage")
extern class WebPage 
{

    public function new():Void;
    public var onAlert:String->Void;
    public var onConfirm:String->Bool;
    public var onConsoleMessage:String->String->String->Void;
    public var onError:String->Array<Dynamic>->Void;
    public var onInitialized:Void->Void;
    public var onLoadFinished:String->Void;
    public var onLoadStarted:Void->Void;
    public var onPrompt:String->String->Void;
    public var onResourceRequested:WebPageSettings->Void;
    public var onResourceReceived:WebPageSettings->Void;
    public var onUrlChanged:WebPageSettings->Void;
    public var clipRect:ClipRect;
    public var content:String;
    //This property stores the path which is used by injectJs function to resolve the script name. Initially it is set to the location of the script invoked by PhantomJS.
    public var librairyPath:String;
    public var navigationLocked:Bool;
    public var settings:WebPageSettings;
    public var viewportSize :ViewportSize;
    public var zoomFactor:Float;
    public function evaluate(fn:Void->Dynamic):Void;
    public function evaluateAsync(fn:Void->Dynamic):Void;
    public function includeJs(URL:String, fn:Void->Void):Void;
    public function injectJs(fileName:String):Bool;
    public function open(URL:String, ?onStatus:String->Void):Void;
    public function release():Void;
    public function render(fileName:String):Void;
    public function renderBase64(format:RenderFormat):String;
    public function sendEvent(type:String, x:Int, y:Int):Void;
    public function uploadFile(selector:String, fileName:String):Void;
    
    
}