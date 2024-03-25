#include <stdio.h>

void win()
{
    printf("flag{h0wd1dy0uf1ndm3!}\n");
}

void register_name()
{
    char buffer[16];

    printf("What's your name?\n");
    scanf("%s", buffer);
    printf("Hi there, %s\n", buffer);    
}

int main()
{
    register_name();

    return 0;
}