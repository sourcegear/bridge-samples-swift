
// this file is automatically added to your package
// by SourceGear.Bridge.Swift.Sdk

import dotnet;

@_cdecl("__sgbridge_main")
public func __sgbridge_main() -> Swift.Int32 
{
    do 
    {
        return try swift_main();
    }
    catch let e as System.Exception 
    {
        try! System.Console.WriteLine(value: e.ToString());
        return -1;
    }
    catch
    {
        print("Unhandled error of some kind");
        return -1;
    }
}

