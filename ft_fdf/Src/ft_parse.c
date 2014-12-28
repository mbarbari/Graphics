/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_parse.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/15 09:39:53 by mbarbari          #+#    #+#             */
/*   Updated: 2014/12/28 13:41:02 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Include/ft_fdf.h"

int		ft_coord_nbr(char *str)
{
	int		cmp;
	int		i;

	cmp = 0;
	i = 0;
	while (str[i] != '\0')
	{
		if (str[i] == ' ' && (str[i - 1] != ' ' && i > 1))
			cmp++;
		i++;
	}
	cmp++;
	return (cmp);
}

t_list			*ft_parsefile(char *file)
{
	t_list		*tab = NULL;
	int			fd;
	int			rslt;
	char		*str;

	str = NULL;
	fd = open(file, O_RDONLY);
	while ((rslt = get_next_line(fd, &str)) > 0)
	{
		str = ft_strjoin_free(str, " ");
		ft_lstadd_back(&tab, ft_lstnew(ft_strdup(str), ft_strlen(str) + 1));
		ft_strdel(&str);
	}
	close(fd);
	if (rslt < 0)
	{
		ft_putendl(C_RED"ERROR x104 : Cannot open file");
		exit(1);
	}
	return (tab);
}

unsigned int			ft_getvalue(char *str, int x)
{
	static char	**tmp;
	int			nbr;
	int			cmp;

	cmp = x;
	if (tmp == NULL)
		tmp = ft_strsplit(str, ' ');
	nbr = (unsigned int)ft_atoi(tmp[cmp]);
	if (tmp[cmp + 1] == NULL)
		tmp = NULL;
	return (nbr);
}
