function col_set_sat(col,sat)
{
	return make_color_hsv(color_get_hue(col), sat, color_get_value(col));
}