import CFastBPE

func printUsage() {
  print("""
        usage: swiftybpe <command> <args>

        The commands supported by swiftybpe are:

        getvocab output input1 [input2]         |extract the vocabulary from one or two text files
        learnbpe nCodes output input1 [input2]  |learn BPE codes from one or two text files
        applybpe output input codes [vocab]     |apply BPE codes to a text file
        applybpe_stream codes [vocab]           |apply BPE codes to stdin and output to stdout
        """)
}

let args = CommandLine.arguments
if args.count<2 {
  printUsage()
  exit(0)
}

let cmd = args[1]
if cmd=="getvocab" {
  getvocab(args[2], args[3], args.count<5 ? "" : args[4])
} else if cmd=="learnbpe" {
  learnbpe(numericCast(Int(args[2])!), args[3], args[4], args.count<6 ? "" : args[5])
} else if cmd=="applybpe" {
  applybpe(args[2], args[3], args[4], args.count<6 ? "" : args[5])
} else if cmd=="applybpe_stream" {
  applybpe_stream(args[2], args.count<4 ? "" : args[3])
} else {
  fatalError("unknown cmd \(cmd)")
}

