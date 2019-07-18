## SwiftyBPE

A Swift wrapper for fastbpe. Example (including flags for performance):

```bash
swift run -c release -Xcc -Ofast swiftbpe learnbpe 60 codes data/greeneggs.txt
swift run -c release -Xcc -Ofast applybpe applied data/greeneggs.txt codes
```

