#ifndef __FMEMOPEN_H_
#define __FMEMOPEN_H_

#ifdef __cplusplus 
extern "C" { 
#endif
FILE* fmemopen(void* buf, size_t capacity, const char* mode);
#ifdef __cplusplus 
}
#endif

#endif