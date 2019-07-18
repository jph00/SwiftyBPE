import Foundation
import SwiftyBPE

func printUsage(_ args:[String]) {
  print("""
        usage: swiftybpe <command> <args>

        The commands supported by swiftybpe are:

        getvocab output input1 [input2]         |extract the vocabulary from one or two text files
        learnbpe nCodes output input1 [input2]  |learn BPE codes from one or two text files
        applybpe output input codes [vocab]     |apply BPE codes to a text file
        applybpe_stream codes [vocab]           |apply BPE codes to stdin and output to stdout

        (Received args: \(args))
        """)
}

let args = CommandLine.arguments
if args.count<2 {
  printUsage(args)
  exit(0)
}

let cmd = args[1]
if cmd=="getvocab" {
  getVocab(output:args[2], input1:args[3], input2:args.count<5 ? "" : args[4])
} else if cmd=="learnbpe" {
  learnBpe(nCodes:Int(args[2])!, output:args[3], input1:args[4], input2:args.count<6 ? "" : args[5])
} else if cmd=="applybpe" {
  applyBpe(output:args[2], input:args[3], codes:args[4], vocab:args.count<6 ? "" : args[5])
} else if cmd=="applybpe_stream" {
  applyBpeStream(codes:args[2], vocab:args.count<4 ? "" : args[3])
} else {
  fatalError("unknown cmd \(cmd)")
}

