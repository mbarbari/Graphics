/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarbari <mbarbari@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/09 17:10:32 by mbarbari          #+#    #+#             */
/*   Updated: 2015/02/07 17:19:33 by mbarbari         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putstr(char const *s)
{
	write(1, s, ft_strlen(s));
}

int		ft_putnstr(char const *s, size_t n)
{
	return (write(1, s, n));
}

void	ft_putnwstr(wchar_t const *s, size_t n)
{
	write(1, &s, n);
}

void	ft_putwstr(wchar_t const *s)
{
	write(1, &s, ft_wstrlen(s));
}
