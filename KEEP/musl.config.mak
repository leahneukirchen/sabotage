#
# musl config.mak template (original in dist/config.mak)
#

# Target CPU architecture. Supported values: i386, x86_64
ARCH = $A

# Installation prefix. DO NOT use /, /usr, or /usr/local !
prefix = /

# Installation prefix for musl-gcc compiler wrapper.
exec_prefix = /

# Uncomment if you want to build i386 musl on a 64-bit host
#CFLAGS += -m32

# Uncomment for smaller code size.
#CFLAGS += -fomit-frame-pointer -mno-accumulate-outgoing-args

# Uncomment for warnings (as errors). Might need tuning to your gcc version.
#CFLAGS += -Werror -Wall -Wpointer-arith -Wcast-align -Wno-parentheses -Wno-char-subscripts -Wno-uninitialized -Wno-sequence-point -Wno-missing-braces -Wno-unused-value

# Uncomment if you want to build a shared library (experimental).
SHARED_LIBS =
