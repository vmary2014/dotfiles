local wezterm = require("wezterm")

return {
	use_fancy_tab_bar = true,
	font = wezterm.font("Fira Code"),
	font_size = 14,
	window_background_gradient = { 
		-- Can be "Vertical" or "Horizontal".  Specifies the direction
		-- in which the color gradient varies.  The default is "Horizontal",
		-- with the gradient going from left-to-right.
		-- Linear and Radial gradients are also supported; see the other
		-- examples below
		orientation = "Vertical",
	
		-- Specifies the set of colors that are interpolated in the gradient.
		-- Accepts CSS style color specs, from named colors, through rgb
		-- strings and more
		colors = {
			"#0f0c29",
			"#24243e",
		},
	
		-- Instead of specifying `colors`, you can use one of a number of
		-- predefined, preset gradients.
		-- A list of presets is shown in a section below.
		-- preset = "Warm",
	
		-- Specifies the interpolation style to be used.
		-- "Linear", "Basis" and "CatmullRom" as supported.
		-- The default is "Linear".
		interpolation = "Linear",
	
		-- How the colors are blended in the gradient.
		-- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
		-- The default is "Rgb".
		blend = "Rgb",
	
		-- To avoid vertical color banding for horizontal gradients, the
		-- gradient position is randomly shifted by up to the `noise` value
		-- for each pixel.
		-- Smaller values, or 0, will make bands more prominent.
		-- The default value is 64 which gives decent looking results
		-- on a retina macbook pro display.
		-- noise = 64,
	
		-- By default, the gradient smoothly transitions between the colors.
		-- You can adjust the sharpness by specifying the segment_size and
		-- segment_smoothness parameters.
		-- segment_size configures how many segments are present.
		-- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
		-- 1.0 is a soft edge.
	
		-- segment_size = 11,
		-- segment_smoothness = 0.0,
	},
	
	window_frame = {
		-- The font used in the tab bar.
		-- Roboto Bold is the default; this font is bundled
		-- with wezterm.
		-- Whatever font is selected here, it will have the
		-- main font setting appended to it to pick up any
		-- fallback fonts you may have used there.
		font = wezterm.font { family = 'Fira Code', weight = 'Bold' },
	  
		-- The size of the font in the tab bar.
		-- Default to 10.0 on Windows but 12.0 on other systems
		font_size = 13.0,
	  
		-- The overall background color of the tab bar when
		-- the window is focused
		active_titlebar_bg = '#24243e',
	  
		-- The overall background color of the tab bar when
		-- the window is not focused
		inactive_titlebar_bg = '#333333',
	},

	colors = {
		tab_bar = {
			background = "#24243a",
			active_tab = {
				bg_color = "#24243e",
				fg_color = "#f8f8f2",
				intensity = "Normal",
			},
			inactive_tab = {
				bg_color = "#333333",
				fg_color = "#f8f8f2",
			},
			inactive_tab_hover = {
				bg_color = "#333333",
				fg_color = "#f8f8f2",
				intensity = "Bold",
			},
			new_tab = {
				bg_color = "#333333",
				fg_color = "#f8f8f2",
			},
		}
	},
	
	window_background_opacity = 0.95,
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	background = { 
		{
			source = { File = "/Users/vincent.mary/Pictures/pngegg.png" },
			opacity = 0.05,
			horizontal_offset = "65%",
			vertical_offset = "50%",
			attachment = { Parallax = 0.1 },
			repeat_y = "NoRepeat",
			repeat_x = "NoRepeat",
			hsb = dimmer,
			width = 1050,
			height = 1050
		}
	},
	enable_scroll_bar = true,
}

