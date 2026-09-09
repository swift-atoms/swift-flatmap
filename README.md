# swift-flatmap

Selects a subsequent computation from a consuming value, independently of its execution domain.

```swift
import FlatMap
let select = FlatMap<Int, String> { String($0) }
```
