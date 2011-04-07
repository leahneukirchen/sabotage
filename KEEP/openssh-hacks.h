#define u_short unsigned short
#define u_long unsigned long

#define S_IWRITE S_IWUSR

/* another wonderful BSD invention... :( */
#define timercmp(a,b,CMP) (((a)->tv_sec == (b)->tv_sec) ? ((a)->tv_usec CMP (b)->tv_usec) : ((a)->tv_sec CMP (b)->tv_sec))
#define timerclear(x) ((x)->tv_sec=(x)->tv_usec=0)
#define timeradd(a,b,x) do { (x)->tv_sec=(a)->tv_sec+(b)->tv_sec; if (((x)->tv_usec=(a)->tv_usec+(b)->tv_usec)>=1000000) { ++(x)->tv_sec; (x)->tv_usec-=1000000; } } while (0)
#define timersub(a,b,x) do { (x)->tv_sec=(a)->tv_sec-(b)->tv_sec; if (((x)->tv_usec=(a)->tv_usec-(b)->tv_usec)<0) { --(x)->tv_sec; (x)->tv_usec+=1000000; } } while (0)
#define timerisset(x) ((x)->tv_sec || (x)->tv_usec)

#define MAXHOSTNAMELEN       64

/* else ssh-keygen doesn't build. */
static inline int pkcs11_init(int i) { return 0; }
static inline void pkcs11_terminate() { }
