module Lita
  module Handlers
    class Shipit < Handler
      SQUIRRELS = [
        "http://28.media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
        "http://i.imgur.com/DPVM1.png",
        "http://d2f8dzk2mhcqts.cloudfront.net/0772_PEW_Roundup/09_Squirrel.jpg",
        "http://www.cybersalt.org/images/funnypictures/s/supersquirrel.jpg",
        "http://www.zmescience.com/wp-content/uploads/2010/09/squirrel.jpg",
        "https://dl.dropboxusercontent.com/u/602885/github/sniper-squirrel.jpg",
        "http://1.bp.blogspot.com/_v0neUj-VDa4/TFBEbqFQcII/AAAAAAAAFBU/E8kPNmF1h1E/s640/squirrelbacca-thumb.jpg",
        "https://dl.dropboxusercontent.com/u/602885/github/soldier-squirrel.jpg",
        "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg",
        "http://i.imgur.com/tIQluOd.jpg",
        "http://i.imgur.com/PIQBHKA.jpg",
        "http://i.imgur.com/Qp8iF6l.jpg",
        "http://i.imgur.com/I7drYFb.jpg",
        "http://i.imgur.com/1obU7mz.jpg",
      ]

      def shipit(response)
        response.reply SQUIRRELS.sample
      end

      route(/ship\s*it/i, :shipit, command: false, help: {
        "ship it" => "Display a motivation squirrel"
      })

    end

    Lita.register_handler(Shipit)
  end
end
