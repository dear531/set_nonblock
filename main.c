#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include "head.h"

int main(void)
{
	int fd;
	fd = open("1.txt", O_RDONLY);
	
	setnonblocking(fd);
	close(fd);
	return 0;
}
