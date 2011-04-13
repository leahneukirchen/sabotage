#define HAVE_UTIMES
#define _GNU_SOURCE
#include <sys/time.h>
#include <sys/param.h>

#define ut_addr     ut_addr_v6[0]

/* else ssh-keygen doesn't build. */
static inline int pkcs11_init(int i) { return 0; }
static inline void pkcs11_terminate() { }
