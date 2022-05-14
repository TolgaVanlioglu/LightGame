function col_set_val(col,val)
{
	return make_color_hsv(color_get_hue(col), color_get_saturation(col), val);
}