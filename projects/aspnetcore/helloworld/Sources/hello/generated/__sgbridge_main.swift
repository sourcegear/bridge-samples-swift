
// this file is automatically added to your package
// by SourceGear.Bridge.Swift.Sdk.

// the mechanism for handling this code will change
// when Swift 5.6 becomes available.

import dotnet;
import jumptable_dotnet;

@_cdecl("__sgbridge_async_main")
public func __sgbridge_async_main() -> NonnullHandle
{
    // if the following things fail the errors are not
    // propagated, so do them up front.
    let tcs : System.Threading.Tasks.TaskCompletionSource_1<Int32> = try! System.Threading.Tasks.TaskCompletionSource_1();
    let t = try! tcs.get_Task()
    let h_task = __copy_handle(t.get_handle());

    Task
    {
        do
        {
            let x = try await swift_main();
            try tcs.SetResult(result: x);
        }
        catch let e as dotnet.System.Exception
        {
            try! tcs.SetException(exception: e);
        }
        catch
        {
            // TODO convert the error to a string and put it inside the exception
            let e = try! dotnet.System.Exception(message: "TODO fail inside closure");
            try! tcs.SetException(exception: e);
        }
    }

    return h_task;
}

