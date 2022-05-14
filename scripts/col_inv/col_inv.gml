function col_inv(col)
{
	return make_color_rgb(255-color_get_red(col), 255-color_get_green(col), 255-color_get_blue(col));
}