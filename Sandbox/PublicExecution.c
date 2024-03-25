#include <stdio.h>

int secret_function() {
    asm("jmp %esp");
}

void lastWords()
{
    char buffer[64];

    puts("Any last words criminal??:\n");
    gets(buffer);
}

int main()
{
    setuid(0);
    setgid(0);

    lastWords();

    return 0;
}