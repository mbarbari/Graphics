/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_event.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/03 20:01:29 by mbarbari          #+#    #+#             */
/*   Updated: 2015/03/06 12:11:08 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ft_event.h>

void	mouse_event(int button, int x, int y, t_env *env)
{
	if (button == MOUSE_BT_LEFT)
		ft_action_mouse_left(x, y, env);
	else if (button == MOUSE_BT_RIGHT)
		ft_action_mouse_right(x, y, env);
	else if (button == MOUSE_BT_MID)
		ft_action_mouse_mid(x, y, env);
}
