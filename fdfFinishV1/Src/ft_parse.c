/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_parse.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/12 18:02:22 by mbarbari          #+#    #+#             */
/*   Updated: 2015/01/18 00:22:11 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Include/ft_fdf.h"
#include <mlx_int.h>

int				ft_coord_nbr(char *str)
{
	int		cmp;
	int		i;

	cmp = 0;
	i = 0;
	while (str[i] != '\0')
	{
		if (str[i] != ' ' && str[i + 1] == ' ')
			cmp++;
		i++;
	}
	if (str[i - 1] == 32)
		cmp--;
	return (cmp);
}

t_node			*ft_parsefile(char *file)
{
	t_node		*map;
	int			fd;
	int			rslt;
	char		*str;
	t_axe		xy;

	xy.y = 1;
	str = NULL;
	map = NULL;
	fd = open(file, O_RDONLY);
	while ((rslt = get_next_line(fd, &str)) > 0)
	{
		xy.x = 0;
		if (!str[0])
			continue ;
		ft_insert_map(str, &map, xy.x, xy.y);
		ft_strdel(&str);
		xy.y++;
	}
	close(fd);
	if (rslt < 0)
	{
		ft_putendl_c("ERROR x104 : Cannot open file", "red");
		exit(1);
	}
	return (map);
}

unsigned int	ft_getvalue(char *str, int x, char **color)
{
	static char	**tmp;
	int			nbr;
	char		*col;

	if (tmp == NULL)
		tmp = ft_strsplit(str, ' ');
	if ((col = ft_strchr(tmp[x], ',')) != NULL)
		*color = ft_strdup(col + 3);
	else
		*color = ft_strdup("000000");
	nbr = ft_atoi(tmp[x]);
	free(tmp[x]);
	tmp[x] = NULL;
	if (tmp[x + 1] == NULL)
	{
		free(tmp);
		tmp = NULL;
	}
	return (nbr);
}

void			ft_insert_map(char *str, t_node **map, int x, int y)
{
	static t_node	*prev = NULL;
	t_node			*line_node;
	int				tablen;
	t_axe			xyz;
	char			*col;

	line_node = NULL;
	tablen = ft_coord_nbr(str);
	while (x <= tablen)
	{
		xyz = (t_axe) { .x = x + 1, .y = y, .z = ft_getvalue(str, x, &col)};
		if (!line_node)
			line_node = ft_lstadd_right(map, ft_new_lstfdf(map, xyz, col));
		else
			ft_lstadd_left(&line_node, &prev, ft_new_lstfdf(map, xyz, col));
		x++;
	}
	prev = line_node;
}
