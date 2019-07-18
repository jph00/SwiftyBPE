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

void* BPEApplyer_new(const char *codesPath, const char *vocabPath) { return new fastBPE::BPEApplyer(codesPath, vocabPath); }
void BPEApplyer_del(void* o) { delete((fastBPE::BPEApplyer*)o); }
char* BPEApplyer_apply(void* o, const char* s) {
  std::string str(s);
  auto res = ((fastBPE::BPEApplyer*)o)->apply(str);
  return strdup(res.c_str());
}

#ifdef __cplusplus
}
#endif

