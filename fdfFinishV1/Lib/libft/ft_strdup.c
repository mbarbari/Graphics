/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 14:55:02 by mbarbari          #+#    #+#             */
/*   Updated: 2015/01/13 04:19:16 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

char	*ft_strdup(const char *str)
{
	int		c_a;
	char	*new;

	c_a = 0;
	new = (char *)malloc(sizeof(char) * (ft_strlen(str) + 2));
	if (!new)
		return (NULL);
	else
	{
		while (str[c_a] != '\0')
		{
			new[c_a] = str[c_a];
			c_a++;
		}
		new[c_a] = '\0';
		return (new);
	}
}
