#include <stdint.h>

#ifdef __cplusplus
extern "C"  {
#endif

void learnbpe(const uint32_t kNPairs, const char *outputFile, const char *inputFile1, const char *inputFile2);
void getvocab(const char *outputFile, const char *inputFile1, const char *inputFile2);
void applybpe(const char *outputFile, const char *inputFile, const char *codesPath, const char *vocabPath);
void applybpe_stream(const char *codesPath, const char *vocabPath);

#ifdef __cplusplus
}
#endif

