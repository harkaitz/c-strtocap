#ifndef _STR_STRCAP_H_
#define _STR_STRCAP_H_

#include <ctype.h>

static inline
int tocap (int _c, unsigned char *_prev) {
    unsigned char prev = *_prev;
    *_prev = _c;
    if (isspace(_c)) {
        return _c;
    } else if (prev == '\0' || isspace(prev)) {
        return toupper(_c);
    } else {
        return tolower(_c);
    }
}

static inline
char *strtocap(char *_s) {
    unsigned char prev = '\0';
    for (char *c = _s; *c; c++) {
        *c = tocap(*c, &prev);
    }
    return _s;
}

static inline
char *strtoupper(char *_s) {
    for (char *c = _s; *c; c++) {
        *c = toupper(*c);
    }
    return _s;
}

static inline
char *strtolower(char *_s) {
    for (char *c = _s; *c; c++) {
        *c = tolower(*c);
    }
    return _s;
}



#endif
