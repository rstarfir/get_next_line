#include "get_next_line.h"
#include <stdio.h>
#include <fcntl.h>

int					main(int ac, char **av)
{
	int				fd;
	//int				fd1;
	char			*line;
	
	fd = 0;
	//fd1 = 1;
	//if (ac > 2)
	//	write(2, "Too many arguments.\n", 20);
	if (ac < 2)
		write(2, "File name missing.\n", 19);
	else
	{
		fd = open(av[1], O_RDONLY);
		/*fd1 = open(av[2], O_RDONLY);
		get_next_line(fd, &line);
		printf("%s\n", line);
		get_next_line(fd1, &line);
		printf("%s\n", line);
		get_next_line(fd, &line);
		printf("%s\n", line);
		get_next_line(fd1, &line);
		printf("%s\n", line);*/
		while ((get_next_line(fd, &line)) == 1)
		{
			printf("%s\n", line);
			free(line);
		}
	}
	close(fd);
	return (0);
}
