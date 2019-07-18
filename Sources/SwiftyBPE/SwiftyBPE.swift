import CFastBPE

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

