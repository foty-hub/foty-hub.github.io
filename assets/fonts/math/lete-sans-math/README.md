Lete-Sans-Math package
======================

## Description

__Lete Sans Math__ is an OpenType sans-serif math font,
based on the
[Lato](https://github.com/latofonts/lato-source) font.

## Contents

* Lete-SansMath.otf		    OpenType Math font
* Lete-SansMath-Bold.otf	Bold variant (limited coverage)
* lete-sans-math.sty		LaTeX style file
* Lete-SansMath.pdf     	Documentation in PDF format
* Lete-SansMath.ltx		    LaTeX source of Lete-SansMath.pdf
* unimath-lete-sans.pdf	Modified version of unimath-symbols.pdf
  			showing available Lete-SansMath symbols compared
			to other sans-serif math fonts.
* unimath-lete-sans.ltx	LaTeX source of unimath-sans.pdf
* README.md             (this file)

## Installation

This package is meant to be installed automatically by TeXLive, MikTeX, etc.
Otherwise, the package can be installed under TEXMFHOME or TEXMFLOCAL, f.i.
Lete-SansMath.otf in directory  texmf-local/fonts/opentype/public/Lete-SansMath/
and lete-sans-math.sty in directory  texmf-local/tex/latex/LatoMath/.  
Documentation files and their sources can go to directory
texmf-local/doc/fonts/public/LeteSansMath/

Don't forget to rebuild the file database (mktexlsr or so) if you install
under TEXMFLOCAL.

Finally, make the system font database aware of the LeteSansMath font
(fontconfig under Linux).

## License

* The font `LeteSansMath.otf’ is licensed under the SIL Open Font License,
Version 1.1. This license is available with a FAQ at:
http://scripts.sil.org/OFL
* The other files are distributed under the terms of the LaTeX Project
Public License from CTAN archives in directory macros/latex/base/lppl.txt.
Either version 1.3c or, at your option, any later version.

## Changes

* v. 0.1: first appeared on https://github.com/abccsss/LatoMath/  
  Author: Chenjing Bu.

* First public version: 0.36
  
* v. 0.37:
   - Missing Greek sans glyphs (U+1D756-U+1D7CB) added to LatoMath-Bold.
   - Glyphs U+2234 to U+223B added to LatoMath-Bold.
  
* v.0.40
   Fonts renamed from "Lato Math" to "Lete Sans Math" due to the
   Reserved Font Name clause on the Lato fonts.
   Package "lato-math" renamed as "lete-sans-math".
  
* v.0.41
   Added feature cv11 to provide a single-storey variant for lowercase g
   (upright, italic, bold, bolditalic).
  
* v.0.43
   - Glyphs U+0332 and U+23DC to U+23DF resized for consistency.
   - Fixed vertical composition of int symbol (U+222B).
   - Glyphs U+21D0 to U+21D5, U+27F8 to U+27FA, U+27FD, and U+27FE
   slightly changed to be constent with the equal sign (U+003D).
   Horizontal composition of these arrows reworked.
  
* v.0.44
   Triple and quadruple stroked arrows (U+21DA, U+21DB, U+2B45, U+2B46)
   are extensible again.
  
* v.0.45
   Displayed integrals and big operators are now verticaly aligned on
   the Math axis, this should fix Issue#13.
  
* v.0.50
   - Fixed issue#14 (discrepancy between \usepackage and \setmathfont).
   - Math table fixes for glyph horizontal/vertical composition.
   - DisplayOperatorMinHeight and DelimitedSubFormulaMinHeight set 
     to 1400 instead of 1500.
   - Glyphs U+2A00 to U+2A0B vertically centered on the math axis.
   - Glyphs U+2032 to U+2037 and U+2057 (prime and co.) resized so that f.i. 
     \(f'\), \(f\prime\) and \(f^{\prime}\) produce the same output, see 
     https://github.com/notofonts/math/blob/main/documentation/building-math-fonts/
  
* v.0.60
   - New calligraphic capitals (unmodulated script) replace the former
     Chancery style which are still accessible with "StylisticSet=1".
   - Former Chancery style capitals heve been slightly emboldened (issue #9).
   - New "StylisticSet=9" converts slanted negations into vertical ones.
   - Display version added to biginterleave (U+2AFC) and bigtalloblong (U+2AFF)
   - Invisible Math operators (U-2061 to U+2064) added.
   - Variation Selectors (U-FE00 and U+FE01) added.
   - Compatibility with Typst v0.14: all glyphs used in vertical compositions
     now sit on the baseline (only up and down arrows had to be fixed).
   - Extensible over/under-accents and over/under-arrows resized for smoother
     variation.
   - Math table Sub/Superscripts parameters tuned, see
     https://tex.stackexchange.com/questions/759695/
   - Math table fixes for better positionnonig subscripts of italic and
     calligraphic glyphs.
   - Documentation updated to cover the new features.
* v.0.61
   - Fixed variation Selectors (U-FE00 and U+FE01) (issue #20).
   - Fixed spaces width (U+2000 to U+200B and U+205F) (issue #21).
   
---
Copyright 2024-2026 Chenjing Bu, Daniel Flipo.  
https://github.com/abccsss/LeteSansMath/
