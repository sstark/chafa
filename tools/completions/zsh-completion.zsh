#compdef chafa

local symbols=(all asci braille extra imported narrow solid ugly alnum bad diagonal geometric inverted none space vhalf alpha block digit half latin quad stipple wedge ambiguous border dot hhalf legacy sextant technical wide)

local options=(
  '(- : *)'{-h,--help}"[Show help]"
  '(- : *)'--version"[Show version]"
  {-v,--verbose}"[Be verbose]"
  --animate"[Whether to allow animation. Defaults to on]:BOOL:(on off)"
  --bg"[Background color of display (color name or hex).]:COLOR"
  {-C,--center}"[Center images. Defaults to off.]:BOOL:(on off)"
  --clear"[Clear screen before processing each file]"
  {-c,--colors}"[Set output color mode. Defaults to best guess]:MODE:(none 2 8 16/8 16 240 256 full)"
  --color-extractor"[Method for extracting color from an area. Average is the default]:EXTR:(average median)"
  --color-space"[Color space used for quantization. Defaults to rgb, which is faster but less accurate]:CS:(rgb din99d)"
  --dither"[Set output dither mode. No effect with 24-bit color. Defaults to none]:DITHER:(none ordered diffusion)"
  --dither-grain"[Set dimensions of dither grains in 1/8ths of a character cell. Defaults to 4x4]:WxH:(1 2 4 8)"
  --dither-intensity"[Multiplier for dither intensity. Defaults to 1.0]:NUM 0.0 - inf"
  {-d,--duration}"[The time to show each file]:SECONDS"
  --fg"[Foreground color of display (color name or hex).]:COLOR:(black blue cyan default gray green magenta orange red white)"
  --fg-only"[Leave the background color untouched]"
  --fill"[Specify character symbols to use for fill/gradients. Defaults to none]:SYMS:($symbols)"
  --font-ratio"[Target font's width/height ratio. Can be specified as a real number or a fraction. Defaults to 1/2]:W/H"
  {-f,--format}"[Set output format]:FORMAT:(iterm kitty sixels symbols)"
  --glyph-file"[Load glyph information from FILE]:FILE:_files"
  --invert"[Invert video. For display with bright backgrounds in color modes 2 and none. Swaps --fg and --bg]"
  --margin-bottom"[When terminal size is detected, reserve at least NUM rows at the bottom as a safety margin. Can be used to prevent images from scrolling out. Defaults to 1.]:NUM"
  --margin-right"[When terminal size is detected, reserve at least NUM columns on the right-hand side as a safety margin. Defaults to 0.]:NUM"
  {-O,--optimize}"[Compress the output by using control sequences. 0 disables, 9 enables every available optimization. Defaults to 5, except for when used with '-c none', where it defaults to 0]:NUM:("{0..9}")"
  --polite"[Polite mode. Defaults to on. Turning this off may enhance presentation and prevent interference from other programs, but risks leaving the terminal in an altered state (rude).]:BOOL:(on off)"
  {-p,--preprocess}"[Image preprocessing. Defaults to on with 16 colors or lower, off otherwise]:BOOL:(on off)"
  --scale"[Scale image, respecting terminal's maximum dimensions. 1.0 approximates original pixel dimensions. Specify max to use all available space. Defaults to 1.0 for pixel graphics and 4.0 for symbols]:NUM"
  {-s,--size}"[Set maximum output dimensions in columns and rows. By default this will be the size of your terminal, or 80x25 if size detection fails]:WxH"
  --speed"[Set the speed animations will play at. This can be either a unitless multiplier, or a real number followed by fps to apply a specific framerate.]:SPEED"
  --stretch"[Stretch image to fit output dimensions; ignore aspect. Implies --scale max]"
  --symbols"[Specify character symbols to employ in final output]:SYMS:($symbols)"
  --threads"[Maximum number of CPU threads to use. If left unspecified or negative, this will equal available CPU cores]:NUM"
  {-t,--threshold}"[Threshold above which full transparency will be used 0.0 - 1.0]:NUM"
  --watch"[Watch a single input file, redisplaying it whenever its contents change. Will run until manually interrupted or, if --duration is set, until it expires.]"
  {-w,--work}"[How hard to work in terms of CPU and memory. 1 is the cheapest, 9 is the most accurate. Defaults to 5]:NUM:("{1..9}")"
)

_arguments $options '*:: :_files'
