#include "include/CFastBPE.h"
#include "../fastBPE/fastBPE.hpp"

#ifdef __cplusplus
extern "C"  {
#endif

void learnbpe(const uint32_t kNPairs, const char *outputFile, const char *inputFile1, const char *inputFile2) {
  fastBPE::learnbpe(kNPairs, outputFile, inputFile1, inputFile2);
}
void getvocab(const char *outputFile, const char *inputFile1, const char *inputFile2) {
  fastBPE::getvocab(outputFile, inputFile1, inputFile2);
}
void applybpe(const char *outputFile, const char *inputFile, const char *codesPath, const char *vocabPath) {
  fastBPE::applybpe(outputFile, inputFile, codesPath, vocabPath);
}
void applybpe_stream(const char *codesPath, const char *vocabPath) {
  fastBPE::applybpe_stream(codesPath, vocabPath);
}

#ifdef __cplusplus
}
#endif

