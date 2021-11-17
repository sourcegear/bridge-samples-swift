# bridge-samples-swift

This repo contains various sample projects which show using .NET and 
Swift with SourceGear Bridge.

(Note that SourceGear Bridge is not yet considered production-ready.)

These samples should work on Linux or Mac, as long as you have:

- Swift 5.5
- .NET 6.0

(Things might work on Windows, but are not yet regularly tested there.)

For example, clone this repo, and the following should work:

```
    cd projects/console/helloworld
    dotnet run
```

If you're on a Mac, note that these projects do include a `Package.swift`
file and are intended to be compatible with Xcode 13, including Quick Help
support for the .NET APIs.

For a bit more info on SourceGear Bridge, see the following blog entry:

https://ericsink.com/entries/sourcegear_bridge.html

Credit for inspiration from:

https://github.com/dodyg/practical-aspnetcore

