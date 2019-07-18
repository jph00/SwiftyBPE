import CFastBPE

public class BPE {
  var _obj:UnsafeMutableRawPointer?

  public init(codes:String, vocab:String="") { _obj = BPEApplyer_new(codes, vocab) }
  deinit { BPEApplyer_del(_obj) }

  public func apply(_ s:String)->String {
    let cstr = BPEApplyer_apply(_obj, s)
    let res = String(cString: cstr!)
    free(cstr)
    return res
  }
}

public func getVocab(output:String, input1:String, input2:String="") {
  getvocab(output, input1, input2)
}

public func learnBpe(nCodes:Int, output:String, input1:String, input2:String="") {
  learnbpe(numericCast(nCodes), output, input1, input2)
}

public func applyBpe(output:String, input:String, codes:String, vocab:String="") {
  applybpe(output, input, codes, vocab)
}

public func applyBpeStream(codes:String, vocab:String="") {
  applybpe_stream(codes, vocab)
}

