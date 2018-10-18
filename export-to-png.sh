#!/bin/bash

OUTDIR=gen

mkdir -p $OUTDIR

# standard size
convert -background none -filter Lanczos -resize 2000x logo/logo-outline-color.svg $OUTDIR/asciidoctor-logo-outline-color.png
convert -background none -filter Lanczos -resize 2000x logo/logo-outline-bw.svg $OUTDIR/asciidoctor-logo-outline-bw.png
convert -background none -filter Lanczos -resize 2000x logo/logo-fill-color.svg $OUTDIR/asciidoctor-logo-fill-color.png
convert -background none -filter Lanczos -resize 2000x logo/logo-fill-bw.svg $OUTDIR/asciidoctor-logo-fill-bw.png

# icon size
convert -background none -filter Lanczos -distort resize 32x logo/icon/logo-outline-color.svg $OUTDIR/asciidoctor-logo-outline-color-32.png
convert -background none -filter Lanczos -distort resize 16x -unsharp 0x1+.5+.25 logo/icon/logo-outline-color.svg $OUTDIR/asciidoctor-logo-outline-color-16.png
convert -background none -filter Lanczos -distort resize 180x logo/logo-fill-color.svg $OUTDIR/asciidoctor-logo-fill-color-180.png
convert -background none -filter Lanczos -distort resize 64x logo/icon/logo-fill-color.svg $OUTDIR/asciidoctor-logo-fill-color-64.png
convert -background none -filter Lanczos -distort resize 48x logo/icon/logo-fill-color.svg $OUTDIR/asciidoctor-logo-fill-color-48.png
convert -background none -filter Lanczos -distort resize 32x logo/icon/logo-fill-color.svg $OUTDIR/asciidoctor-logo-fill-color-32.png
convert -background none -filter Lanczos -distort resize 16x -unsharp 0x1+.5+.25 logo/icon/logo-fill-color.svg $OUTDIR/asciidoctor-logo-fill-color-16.png

# favicon
icotool -c -o $OUTDIR/favicon.ico \
  $OUTDIR/asciidoctor-logo-fill-color-180.png \
  $OUTDIR/asciidoctor-logo-fill-color-64.png \
  $OUTDIR/asciidoctor-logo-fill-color-48.png \
  $OUTDIR/asciidoctor-logo-fill-color-32.png \
  $OUTDIR/asciidoctor-logo-fill-color-16.png
