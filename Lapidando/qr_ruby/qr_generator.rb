require "rqrcode"
require "rqrcode_core"


def qrGenerator

    print "Select a site for qr code generate Ex:youtube\n"
    url = gets.chomp.downcase

    final_url = "http://#{url}.com"

    print "Select a name for your qr code PNG:"
    name_file = gets.chomp


    qrcode = RQRCode::QRCode.new(final_url)

    png = qrcode.as_png(
    bit_depth: 1,
    border_modules: 4,
    color_mode: ChunkyPNG::COLOR_GRAYSCALE,
    color: "black",
    file: nil,
    fill: "white",
    module_px_size: 6,
    resize_exactly_to: false,
    resize_gte_to: false,
    size: 120
    )

    IO.binwrite("#{name_file}.png", png.to_s)
    
end

qrGenerator()