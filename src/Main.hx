package ;
import haxe.Log;
import js.Lib;
import phantomHx.Console;
import phantomHx.FileMode;
import phantomHx.FileStream;
import phantomHx.FileSystem;
import phantomHx.Phantom;
import phantomHx.System;
import phantomHx.WebPage;
import phantomHx.WebServer;
import phantomHx.Module;
/**
 * ...
 * @author Julien Beaufils
 */

class Main 
{
    private var p:WebPage;
     
    static function main() 
    {
        new Main();
    }
    
    public function new()
    {
        trace(Std.string(Phantom.version));
        //
        //server example
        var server:WebServer = Module.getWebServer();
        server.listen(8080, serverRequestHandler);
        //
        //webpage rendering example
        var system:System = Module.getSystem();
        trace(system.os);
        p = Module.getWebPage();
        p.open(system.args[1], onOpen);
        //
        //filestream example
        var f:FileSystem = Module.getFileSystem();
        var stream:FileStream = f.open("index.html", FileMode.READ);
        trace(stream.readLine());
        stream.close();
    }   
    
    private function onOpen(status:String):Void 
    {
        Console.log("Web page open "+status);     
        p.render("test.pdf");
        Console.log("PDF rendered");
    }
    private function serverRequestHandler(request:Request, response:Response):Void
    {
        Console.log(Std.string(request));
        response.statusCode = 200; 
        response.write('<html><body>HELLO WORLD From phantom JS server!</body></html>');
        response.close();
    }
    
}