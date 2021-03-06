/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_mathline.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/31 10:29:35 by mbarbari          #+#    #+#             */
/*   Updated: 2015/01/19 13:45:32 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Include/ft_fdf.h"

static void		testdirector(t_vector vec1, int *xincr, int *yincr)
{
	if (vec1.x1 < vec1.x2)
		*xincr = 1;
	else
		*xincr = -1;
	if (vec1.y1 < vec1.y2)
		*yincr = 1;
	else
		*yincr = -1;
}

static t_rgb	col_random(char **col, t_env *env, double percent, t_cline *cl)
{
	t_rgb	coltodraw;

	if (env->mlx.modes == 1)
		coltodraw = getcolormap(cl->h, &env->map);
	else if (env->mlx.modes == 2)
	{
		coltodraw = getshaded(getcolormap2(percent),
				getcolormap2(percent + 3), percent);
	}
	else if (env->mlx.modes != 1 && col[0] && ft_strtol(col[0]) != 0x000000)
		coltodraw = getcolorbydegrade(col, cl->dy, cl->i);
	else
		coltodraw = create_rgb("FFFFFF");
	return (coltodraw);
}

static void		first_type(t_cline *cl, char **col, t_env *env)
{
	t_rgb			coltodraw;

	cl->i = -1;
	cl->error = dround(cl->dx / 2);
	while ((cl->i++) < cl->dx)
	{
		cl->xy.x += cl->xincr;
		cl->error += cl->dy;
		if (cl->error > cl->dx)
		{
			cl->error -= cl->dx;
			cl->xy.y += cl->yincr;
		}
		if (cl->dy != 0 || env->mlx.modes == 1)
			coltodraw = col_random(col, env, (double)(cl->i / cl->dy), cl);
		draw_pixel_to_img(cl->xy.x, cl->xy.y, coltodraw, env);
	}
}

static void		second_type(t_cline *cl, char **col, t_env *env)
{
	t_rgb			coltodraw;

	cl->i = -1;
	cl->error = dround(cl->dy / 2);
	while ((cl->i++) < cl->dy)
	{
		cl->xy.y += cl->yincr;
		cl->error += cl->dx;
		if (cl->error > cl->dy)
		{
			cl->error -= cl->dy;
			cl->xy.x += cl->xincr;
		}
		if (cl->dy != 0 || env->mlx.modes == 1)
			coltodraw = col_random(col, env, (double)(cl->i / cl->dy), cl);
		draw_pixel_to_img(cl->xy.x, cl->xy.y, coltodraw, env);
	}
}

void			draw_line1(t_vector vec1, t_env *env, char *col, char *offcol)
{
	t_cline	cl;
	char	*colglob[2];

	colglob[0] = col;
	colglob[1] = offcol;
	cl.dx = abs(vec1.x2 - vec1.x1);
	cl.dy = abs(vec1.y2 - vec1.y1);
	testdirector(vec1, &cl.xincr, &cl.yincr);
	cl.xy.x = vec1.x1;
	cl.xy.y = vec1.y1;
	cl.h = vec1.alt;
	if (cl.h > 958213088)
		printf("max h : %d", cl.h);
	if (cl.dx > cl.dy)
		first_type(&cl, colglob, env);
	else
		second_type(&cl, colglob, env);
	draw_pixel_to_img(cl.xy.x, cl.xy.y, create_rgb(col), env);
}
