/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_fdf.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/16 10:30:10 by mbarbari          #+#    #+#             */
/*   Updated: 2014/12/24 03:26:58 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_FDF_H
# define FT_FDF_H
# define WIDTH 600
# define HEIGHT 600
# define OFFSET_X 50
# define TITLE_WIN "FDF a la BARBARE"
# define RED 0xFF0000
#include <mlx.h>
#include <libft.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

typedef unsigned int color;
typedef unsigned int size_vector;

typedef struct	s_mlx
{
	void          *mlx_ptr;
	void          *win_ptr;
	void          *img;
	char          *data;
	int           width;
	int           height;
	int           bpp;
	int           sizeline;
	int           endian;
	unsigned int  color;
	char          *data_color;
}				t_mlx;

typedef struct	s_coord
{
	int x1;
	int y1;
	int x2;
	int y2;
}				t_coord;

// FT_GRAPH.H
void			draw_pixel_to_img(int x, int y, t_mlx *mlx,  color unitcolor);
void			draw_line(t_coord c1, t_mlx *mlx);
void			draw_fdf(t_mlx *mlx, t_list *lstfile, size_vector len_vector);

// FT_PARSE.H
t_list			*ft_parsefile(char *file);
unsigned int	ft_getValue(char *str, int x);
int				ft_coord_nbr(char *str);

// FT_ALGOFDF.H
double			coord_x_iso(int x, int y, float offset_iso);
double			coord_y_iso(int x, int y, int z, float offset_iso);
int				x_max(t_list *lst);
int				y_max(t_list *lst);

// FT_MATH.H
int				direction_vector(int x1, int y1, int x2, int y2);
t_coord			rotate_direction(t_coord cl);
t_coord			trans_vectoriel(t_coord *vector, int trans);
t_coord			new_vector(int x1, int y1, int x2, int y2);

#endif
