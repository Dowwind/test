#include <stdio.h>
#include <stdlib.h>

int		main(void)
{
  FILE		*file;
  char		*str;
  size_t	n;

  if ((file = fopen("doc", "r")) == NULL)
    return (EXIT_FAILURE);
  str = NULL;
  n = 0;
  getline(&str, &n, file);
  printf("str = %s \n", str);
  free(str);
  fclose(file);
  return (EXIT_SUCCESS);
}
