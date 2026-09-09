import FlatMap
import Testing

@Suite
struct `FlatMap selects continuations independently of parsing` {

    @Test
    func `a factory can return a noncopyable continuation`() {
        let flatMap = FlatMap::FlatMap<Int, Continuation> { Continuation(value: $0) }
        let continuation = flatMap(42)
        #expect(continuation.value == 42)
    }

    private struct Continuation: ~Copyable {
        let value: Int
    }
}
