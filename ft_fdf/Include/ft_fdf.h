/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_fdf.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/16 10:30:10 by mbarbari          #+#    #+#             */
/*   Updated: 2015/01/03 04:41:54 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_FDF_H
# define FT_FDF_H

# define WIDTH 1200
# define HEIGHT 1200
# define OFFSET_W 300
# define OFFSET_H 250
# define OFFSET_XY 15
# define OFFSET_ISOY 0.6
# define OFFSET_ISOX 0.82
# define TITLE_WIN "FDF a la BARBARE"
# define RED 0xFF0000
# define GRE 0x00FF00
# define BLU 0x0000FF

#include <mlx.h>
#include <libft.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <math.h>
#include "get_next_line.h"

typedef unsigned int color;
typedef unsigned int size_vector;

typedef struct	s_mlx
{
	void          *mlx_ptr;
	void          *win_ptr;
	void          *img;
	char          *data;
	int           bpp;
	int           sizeline;
	int           endian;
	unsigned int  color;
	char          *data_color;
}				t_mlx;

typedef struct	s_vector
{
	int x1;
	int y1;
	int x2;
	int y2;
}				t_vector;

typedef struct	s_axe
{
	int x;
	int y;
	int z;
}				t_axe;

typedef struct	s_node
{
	t_axe	xyz;
	struct s_node	*first_xnode;
	struct s_node	*left_node;
	struct s_node	*right_node;
}				t_node;

typedef struct	s_cline
{
	int dxyp[3];
	int deltaE;
	int deltaNE;
}				t_cline;

typedef struct	s_env
{
	int		w;
	int		h;
	int		dx;
	int		dy;
	int		prof;
	t_node	*map;
	t_mlx	mlx;
}				t_env;

// FT_FDF.H
void			ft_fdf(char *str);

// FT_GRAPH.H
void			draw_pixel_to_img(int x, int y, t_mlx *mlx,  color unitcolor);
void			ecrire_vecteur(t_vector cnew, int x, int z, color col); // a supprimer
void			create_line(t_vector c1, t_mlx *mlx, color col);
void			draw_fdf(t_env *env);

// FT_ALGOFDF.H
double			coord_x_iso(int x, int y, int tilew, int tileh);
double			coord_y_iso(int x, int y, int z, int tileh, int tilew);
int				x_max(t_node *map);
int				y_max(t_node *map);

// FT_PARSE.H
t_node			*ft_parsefile(char *file);
unsigned int	ft_getvalue(char *str, int x);
int				ft_coord_nbr(char *str);
void			ft_insert_map(char *str, t_node **map, int cr);

// FT_MATH.H
int				correct_vector(t_vector *vec1);
t_vector		*rotate_direction(t_vector *cl);
t_vector		trans_vectoriel(t_vector vector, int tr_x, int tr_y);
t_vector		new_vector(t_axe a, t_axe b);
t_vector		new_vector_iso(t_axe a, t_axe b, int vec_w, int vec_h);
t_vector		cpy_vector(t_vector v_out, t_vector v_in);
int				abs(int val);

// FT_LIST.H
t_node			*ft_new_lstfdf(t_node *first, t_axe xyz);
t_node			*ft_lstadd_right(t_node **map, t_node *new);
void			ft_lstadd_left(t_node **line, t_node **prev, t_node *new);
void			ft_print_map(t_node *map, int x, int y);
void			ft_del_map(t_node **map);

// FT_MATHLINE.H
void			draw_line1(t_vector v1, t_mlx *mlx, color col);
/*void			draw_line2(t_vector v1, t_mlx *mlx, color col);
void			draw_line3(t_vector v1, t_mlx *mlx, color col);
void			draw_line4(t_vector v1, t_mlx *mlx, color col);
*/

// FT_EVENT.H
int			ft_event_key(int key, t_env *env);
int			ft_event_expose(t_env *env);
#endif
