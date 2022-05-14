function col_set_hue(col,hue)
{
	return make_color_hsv(hue, color_get_saturation(col), color_get_value(col));
}