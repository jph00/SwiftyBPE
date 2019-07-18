## SwiftyBPE

A Swift wrapper for fastbpe. Example (including flags for performance):

```bash
swift build -c release -Xcc -Ofast
./swiftbpe learnbpe 60 codes data/greeneggs.txt
./swiftbpe applybpe applied data/greeneggs.txt codes
```

