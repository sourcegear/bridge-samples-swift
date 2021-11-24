
import dotnet; 

public func swift_main() throws -> Swift.Int32 {
    let v : Swift.Int64 = 8675309;
    let x = try System.Numerics.BigInteger(value: v);
    var y = x;
    let p = 81
    for _ in 1 ... (p - 1) {
        y = y * x;
    }
    let s = System.String(swiftString: "\(v) ^ \(p) is:");
    try System.Console.WriteLine(value: s);
    try System.Console.WriteLine(value: y.ToString());
    return 0;
}

