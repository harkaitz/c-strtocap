#include "../strtocap.h"
#include <stdio.h>

int main (int _argc, char *_argv[]) {
    unsigned char prev = '\0';
    if (_argc == 1) {
        int chr;
        while ((chr = fgetc(stdin))!=EOF) {
            fputc(tocap(chr, &prev), stdout);
        }
    } else {
        for (int i=1; i<_argc; i++) {
            if (i!=1) fputc(' ', stdout);
            fputs(strtocap(_argv[i]), stdout);
        }
        fputc('\n', stdout);
    }
    return 0;
}
