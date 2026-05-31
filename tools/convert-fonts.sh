#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

convert() {
  local input="$1"
  local output="$2"

  mkdir -p "$(dirname "$output")"
  fonttools ttLib.woff2 compress "$input" -o "$output"
}

convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-ExtraLight.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-ExtraLight.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-ExtraLightOblique.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-ExtraLightOblique.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-Light.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-Light.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-LightOblique.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-LightOblique.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-Regular.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-Regular.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-Oblique.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-Oblique.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-Medium.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-Medium.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-MediumOblique.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-MediumOblique.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-Bold.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-Bold.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-BoldOblique.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-BoldOblique.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-ExtraBold.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-ExtraBold.woff2"
convert "fonts_to_convert/text/Avenir LT (Pro Version)/AvenirLTPro-ExtraBoldOblique.otf" "assets/fonts/text/avenir-lt-pro/AvenirLTPro-ExtraBoldOblique.woff2"

convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-Light.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-Light.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-LightOblique.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-LightOblique.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-Book.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-Book.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-BookOblique.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-BookOblique.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-Medium.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-Medium.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-MediumOblique.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-MediumOblique.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-SemiBold.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-SemiBold.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-SemiBoldOblique.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-SemiBoldOblique.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-Bold.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-Bold.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-BoldOblique.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-BoldOblique.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-XBold.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-XBold.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-XBoldOblique.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-XBoldOblique.woff2"
convert "fonts_to_convert/text/Futura LT (Pro Version)/FuturaLTPro-Black.otf" "assets/fonts/text/futura-lt-pro/FuturaLTPro-Black.woff2"

convert "fonts_to_convert/maths/euler-math/Euler-Math.otf" "assets/fonts/math/euler/Euler-Math.woff2"
convert "fonts_to_convert/maths/concmath-otf/Concrete-Math.otf" "assets/fonts/math/concrete/Concrete-Math.woff2"
convert "fonts_to_convert/maths/concmath-otf/Concrete-Math-Bold.otf" "assets/fonts/math/concrete/Concrete-Math-Bold.woff2"
convert "fonts_to_convert/maths/gfsneohellenicmath/GFSNeohellenicMath.otf" "assets/fonts/math/gfs-neohellenic/GFSNeohellenicMath.woff2"
convert "fonts_to_convert/maths/stixfonts-2.13b171/fonts/static_otf/STIXTwoMath-Regular.otf" "assets/fonts/math/stix-two/STIXTwoMath-Regular.woff2"
convert "fonts_to_convert/maths/newpx/opentype/TeXGyrePagellaX-Regular.otf" "assets/fonts/math/newpx/TeXGyrePagellaX-Regular.woff2"
convert "fonts_to_convert/maths/newpx/opentype/TeXGyrePagellaX-Italic.otf" "assets/fonts/math/newpx/TeXGyrePagellaX-Italic.woff2"
convert "fonts_to_convert/maths/newpx/opentype/TeXGyrePagellaX-Bold.otf" "assets/fonts/math/newpx/TeXGyrePagellaX-Bold.woff2"
convert "fonts_to_convert/maths/newpx/opentype/TeXGyrePagellaX-BoldItalic.otf" "assets/fonts/math/newpx/TeXGyrePagellaX-BoldItalic.woff2"
