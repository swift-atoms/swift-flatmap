@frozen
public struct FlatMap<
    Source: ~Copyable & ~Escapable,
    Continuation: ~Copyable
> {

    public let transform: (consuming Source) -> Continuation

    @inlinable
    public init(_ transform: @escaping (consuming Source) -> Continuation) {
        self.transform = transform
    }
}

extension FlatMap where Source: ~Copyable & ~Escapable, Continuation: ~Copyable {
    @inlinable
    public borrowing func callAsFunction(_ source: consuming Source) -> Continuation {
        transform(source)
    }
}
