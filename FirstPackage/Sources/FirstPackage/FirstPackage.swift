public struct FirstPackage {
    public private(set) var text = "Hello, World!"

    public init() {
    }
   
        public func SayPackageHello() -> String {
            return "Hello from Package"
        }

}
