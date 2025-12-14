Official image `CubScoutsLogo-FullColor-CSBC.jpg` is un-necessarily large for the book, but is the image from the Cub Scout branding site.

Smaller image used in the book was converted with GraphicsMagick with the command:                                                                                                                                                                        
`gm convert CubScoutsLogo-FullColor-CSBC.jpg -resize 1600x1600 -quality 70 -strip CubScoutsLogo-FullColor-CSBC_sm.jpg`


The QR code was generated with:

`qrencode -o qr_full.png -s 10 "https://github.com/ewaldmire/scout-songbook/releases/latest/download/pack-showbook_letter_full.pdf"`
`qrencode -o qr_booklet.png -s 10 "https://github.com/ewaldmire/scout-songbook/releases/latest/download/pack-showbook_letter_booklet.pdf"`

After running:

`dnf install qrencode -y`
