#!/usr/bin/bash

OUTDIR=gen

mkdir -p $OUTDIR

# standard size
convert logo/logo-outline-color.svg -filter Lanczos -resize 2000x $OUTDIR/asciidoctor-logo-outline-color.png
convert logo/logo-outline-bw.svg -filter Lanczos -resize 2000x $OUTDIR/asciidoctor-logo-outline-bw.png
convert logo/logo-fill-color.svg -filter Lanczos -resize 2000x $OUTDIR/asciidoctor-logo-fill-color.png
convert logo/logo-fill-bw.svg -filter Lanczos -resize 2000x $OUTDIR/asciidoctor-logo-fill-bw.png

# icon size
convert logo/icon/logo-outline-color.svg -filter Lanczos -distort resize 32x $OUTDIR/asciidoctor-logo-outline-color-32.png
convert logo/icon/logo-outline-color.svg -filter Lanczos -distort resize 16x -unsharp 0x1+.5+.25 $OUTDIR/asciidoctor-logo-outline-color-16.png
convert logo/icon/logo-fill-color.svg -filter Lanczos -distort resize 180x $OUTDIR/asciidoctor-logo-fill-color-180.png
convert logo/icon/logo-fill-color.svg -filter Lanczos -distort resize 64x $OUTDIR/asciidoctor-logo-fill-color-64.png
convert logo/icon/logo-fill-color.svg -filter Lanczos -distort resize 48x $OUTDIR/asciidoctor-logo-fill-color-48.png
convert logo/icon/logo-fill-color.svg -filter Lanczos -distort resize 32x $OUTDIR/asciidoctor-logo-fill-color-32.png
convert logo/icon/logo-fill-color.svg -filter Lanczos -distort resize 16x -unsharp 0x1+.5+.25 $OUTDIR/asciidoctor-logo-fill-color-16.png

# favicon
icotool -c -o $OUTDIR/favicon.ico \
  $OUTDIR/asciidoctor-logo-fill-color-180.png \
  $OUTDIR/asciidoctor-logo-fill-color-64.png \
  $OUTDIR/asciidoctor-logo-fill-color-48.png \
  $OUTDIR/asciidoctor-logo-fill-color-32.png \
  $OUTDIR/asciidoctor-logo-fill-color-16.png
