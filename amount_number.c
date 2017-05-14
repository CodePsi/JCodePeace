#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
unsigned file_count_n(){
    int  i, j;
    char b[256], *p;
    unsigned n = 0;
    FILE*   fp = fopen("output.txt", "rt");
    if(fp == NULL)
        return 0;
    
    i = 0;
    while(fgets(b, sizeof(b) - 1, fp) != NULL){
        if(ferror(fp) != 0)
            break;
 
        for(p = &b[0]; *p; ++p){
            j = (*p >= '0' && *p <= '9');
            if(j)
                ++i;
            else if(! j){
                if(i > 0)
                    ++n;
                i = 0;
            }
        }
    }
    fclose(fp);
    return n + (unsigned)(i != 0);
}
int main (){
FILE* input, * output, * fileN;
int am2;
char buffer[BUFSIZ], am;
size_t nread;
 
input = fopen("input.txt", "rb");
output = fopen("output.txt", "wb");
while(nread = fread(buffer, sizeof(char), sizeof(buffer), input))
    fwrite(buffer, sizeof(char), nread, output);
fclose(input);
fclose(output);
am2 = file_count_n();
printf("%d\n ", am2);

return 0;

}