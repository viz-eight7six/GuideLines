# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "Kermit_the_Frog", password: "password", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_2_f2rqdk.jpg")
User.create(username: "vinson", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/Tamarin_portrait_2_edit3_pbodko.jpg")

# Guide.create(title: "guide1", body: "this is a test guide", author_id: 1, photo_url: 'http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/640px-Chocolate_Chip_Cookies_-_kimberlykv_mfvoeo.jpg')
#
# Step.create(title: "step test", body: "this is step1", guide_id: 1, photo_url: 'http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_3_ti3l5k.jpg')
# Step.create(title: "step test2", body: "this is step2", guide_id: 1, photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/download_iy40py.jpg")

User.create(username: "EmilyRoxPrincess", password: "123456", photo_url: "https://cdn.instructables.com/FNG/J1IC/HWLD7TVI/FNGJ1ICHWLD7TVI.SQUARE.jpg")
User.create(username: "brmarcum", password: "123456", photo_url: "https://cdn.instructables.com/FCT/YNH8/HVXBXI2V/FCTYNH8HVXBXI2V.SQUARE.jpg")
User.create(username: "sally", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_er1xlr.jpg")
User.create(username: "jake_the_snake", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/SG_M_Westlake_picture_ytsylk.jpg")
User.create(username: "JonSnow", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/download_iy40py.jpg")
User.create(username: "Rick", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_1_syputd.jpg")
User.create(username: "Heisenberg", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114248/Picture_by_Hubble_Space_Telescope_crop_ttrk1g.jpg")

Guide.create([{
    title: "How to Train Your Pet",
    photo_url: "https://cdn.instructables.com/FXV/QOO3/HWMXGSIW/FXVQOO3HWMXGSIW.LARGE.jpg",
    author_id: 3,
    body: "A guide to teach you how to train your pet",

    }
  ]
)
Step.create([
  {
    guide_id: 1,
    title: "How to Train Your Pet",
    body: "<p>Lots of people like training their pets,and the pets don't need to be dogs or other trainable pets it could be even<\/p><p>a hamster!<\/p><p>Training a pet can be difficult,so it can take a lot of time,but you have to be patient,training a pet is one <\/p><p>of the good ways to bond with each other,and I would suggest starting when the pet is still young.<\/p>",
    photo_url: 'https://cdn.instructables.com/FNA/0DI4/HWMYG0WV/FNA0DI4HWMYG0WV.LARGE.jpg'
    },
    {
      guide_id: 1,
      title: "Find a Nice Large Space in Your Home",
      body: "<p>First find a large space in your home to train your pet,but make sure there are no wires or anything dangerous in that space for your pet.<\/p>",
      photo_url: 'https://cdn.instructables.com/FUV/Z0JW/HWMYG14I/FUVZ0JWHWMYG14I.LARGE.jpg'
      },
      {
        guide_id: 1,
        title: "Choose Some Different Healthy Treats",
        body: "<p>When you find a good space,then you should choose some healthy treats for your pet,treats are for <\/p><p>giving your pet everytime they do the trick and before they do a trick!<\/p>",
        photo_url: 'https://cdn.instructables.com/FF8/ZINA/HWMYG16X/FF8ZINAHWMYG16X.LARGE.jpg'
        },
        {
          guide_id: 1,
          title: "Bring Your Pet to the Room",
          body: "<p>Before you bring the pet in the room,give him or her a treat,so they know something<\/p><p>good is going on!<\/p><p>and then bring it there ready to do the trick<\/p>",
          photo_url: 'https://www.instructables.com/static/defaultIMG/default.MEDIUM.gif'
          },
          {
            guide_id: 1,
            title: "Say the Command",
            body: "<p>So now the most important steps!<\/p><p>Think about what tricks you want to teach your pet,and then say a command that is short so your pet understands,<\/p><p>so like if you want your pet to turn around say turn!<\/p>",
            photo_url: 'https://cdn.instructables.com/F8V/F0IM/HWMXGS1D/F8VF0IMHWMXGS1D.LARGE.jpg'
            },
            {
              guide_id: 1,
              title: "Teaching the Actual Trick",
              body: "<p>So when you say the command (in a clear and loud voice)then you get the treat and like if you would want the pet to sit then get the treat up and down until the pet understands when it goes down give treat and repeat a few times,<\/p><p>then say the command but don't show the treat and if the pet does it then give treat,if not give treat and repeat again the going up and down or turning round it really depends on what trick you are teaching!<\/p>",
              photo_url: 'https://cdn.instructables.com/F8V/F0IM/HWMXGS1D/F8VF0IMHWMXGS1D.LARGE.jpg'

              }
            ])

Guide.create(
title: "Easy Under-Cabinet Lighting",
photo_url: "https://cdn.instructables.com/FIY/MP3G/HWVAO5LM/FIYMP3GHWVAO5LM.LARGE.jpg",
author_id: 4,
body: "How to add some lighting"
)
Step.create( [
    {   guide_id: 2,
        title: "Easy Under-Cabinet Lighting",
        photo_url: "https://cdn.instructables.com/F2V/WMXZ/HWVAO4YQ/F2VWMXZHWVAO4YQ.LARGE.jpg",
        body: "<p>My apartment has terrible lighting in the kitchen. There is one big fluorescent light on the ceiling and then the two lights over the stove from the vent hood. The problem is that there is a big dead space on the counter near the sink where there isn't any good light. So I made an under-cabinet light using some LED strips. <\/p>",
    },
    {   guide_id: 2,
        photo_url: "https://cdn.instructables.com/FL8/ET76/HWLD7RMX/FL8ET76HWLD7RMX.LARGE.jpg",
        title: "Parts and Tools List and Safety",
        body: "I don't want to have to run this on batteries, and since outlets are abundant, I built it to run on AC mains voltage. That means that we are dealing with exposed AC lines, so take extra care around those wires. Make sure anyone who wanders into the room is aware of the danger. And soldering irons are hot, so don't burn yourself. Trust me on that one.<br><br>This is a really simple build with a short list of stuff you need. I get most of my small parts from salvaging old electronics.<br><br>Parts:<br><br>- 1 AC transformer. An output of 12VAC is what we are looking for, regardless of whether you have 110VAC or 220VAC.<br><br>- AC power cord (not pictured)<br><br>- 4 rectifier diodes. 1N4001, 1N4004, 1N4007 should all work here. They are rated for 1 amp, which is way more than we will need here, but check your LED specs to be safe. Alternatively, you could use a discrete bridge rectifier here as well.<br><br>- small PCB<br><br>- solid color LED lights. Multi-color RGB LEDs with only three copper pads won't work here without a microcontroller because you need a data signal. If you use RGB LEDs, they should have four copper pads, otherwise they should only have two pads. I bought these.<br><br>- 18 gauge speaker hook-up wire<br><br>- mounting hardware, e.g. double-sided tape, glue, screws etc.<br><br>- heat shrink<br><br>Normally I would use a plastic enclosure. However, I found a transformer that is completely sealed and the wires will be completely covered with either heat shrink or epoxy, so I didn't use one this time. You must ensure that you completely insulate against the AC power so there is no risk of exposure.<br><br>Tools: (These are just the tools I used. Make it work for you with whatever you need, just be safe)<br><br>- soldering iron and solder<br><br>- saw or rotary tool<br><br>- wire cutter/stripper<br><br>- drill bit<br><br>- hot air gun for heat shrink<br><br>- epoxy to seal it all up<br><br>"

    },
    {   guide_id: 2,
        photo_url: "https://cdn.instructables.com/FOA/SE8U/HWLD7S40/FOASE8UHWLD7S40.LARGE.jpg",
        title: "Design",
        body: "<p>The transformer should output about 12VAC. The LEDs I bought are rated for 12VDC. In order to convert AC to DC, the AC needs to be rectified using diodes. But LEDs are diodes (<strong>L<\/strong>ight <strong>E<\/strong>mitting <strong>D<\/strong>iodes), so technically this circuit will work fine without even using the bridge rectifier. Just plug the LEDs to the transformer output and away we go. The problem is that the LEDs will flash about 50-60 times per second with each rise of the AC sine wave. When the AC voltage goes negative, the LEDs will turn off because that's how diodes work. You only get power through a diode in one direction not both. So they are flashing 50 times per second, but they aren't even on for the entire flash period, maybe about 40% or so. The point is that you will notice the flashing. The bridge rectifier makes all of the negative AC voltages turn positive, so the flashing is twice as fast and the lights are on for more time (as a percentage) per flash period. You can see the difference in the o-scope readout in image 2. The red line shows the full 12VAC wave going positive and negative. The blue line has been rectified so the voltage is always positive. If we wanted to fully convert to DC voltage, we would add a 470uF electrolytic capacitor across the DC output and then feed that signal into a voltage regulator. The output from that is a very clean and stable DC voltage. I used that design in <a href=\"https://www.instructables.com/id/Motion-Activated-AC-Switch/\" rel=\"nofollow\">this Instructable<\/a>.<\/p><p>One thing to note with this project is that the power supply is unregulated, so any fluctuations in the grid will get sent straight to the LEDs. I don't expect them to survive a large spike, but it only cost me about $3 for the whole project, so I'm not really worried about it.<\/p>"

    },
    {   guide_id: 2,
        title: "Building",
        photo_url: "https://cdn.instructables.com/FLH/TMVJ/HWLD7R19/FLHTMVJHWLD7R19.LARGE.jpg",
        body: "<p>I always build on a breadboard before putting anything on a PCB. I recommend you do the same. The red and black wires in the image are simply to show where the relative positive and ground voltages are. This is not a clean signal by any means, but all voltage is now positive, so we do need to keep the two wires straight.<\/p><p>The LED strip has little copper pads spaced between every three LEDs. Cut it just to the left of those pads, cut off the plastic coating and tin the pads to make soldering to the wires easier. Make sure you tin the wires too. In my application I used two short pieces of the LED strip on each side of the cabinets. I had to turn the strip over and very carefully scrape away the plastic coating to expose the copper underneath. I then soldered to the back side of the first length of LEDs and then connected that to the front side of the next length.<\/p><p>You can connect several individual lengths of LEDs to the same output connections on the bridge rectifier. I made four different lengths of 18 LEDs, then put two together end to end to make two lengths of 36. Those two lengths are then connected together at the rectifier output, one strand off to the right, the other off to the left. Just keep in mind the power requirements for each LED and the limitations of the parts, specifically the diodes.<\/p><p>The last image shows the connections all nice and finished with the heat shrink. Be careful when handling the LED strip with wires soldered on. I had one of the copper pads break off with the wire and I lost connection. I was able to fix it by attaching the wires to the back instead. So get the heat shrink on as fast as you can to give the joint some strength.<\/p>"
    },
    {   guide_id: 2,
        photo_url: "https://cdn.instructables.com/FQJ/DMX4/HWLD7R16/FQJDMX4HWLD7R16.LARGE.jpg",
        title: "Finishing and Mounting",
        body: "<p>I finished mine with a thick coat of epoxy.<\/p><p>Once everything is connected right, the only thing left is to mount it. The LEDs come with 3M double-sided tape, but I used some more just to be sure. The transformer was screwed to the underside of the cabinet out of the way. At some point in the future I will be adding a microcontroller and proximity sensor to toggle the lights automatically, but for now I'm happy with the result. I will probably make a couple more versions, one for my desk and one for my wife's as well. If you don't want the microcontroller, you could very easily install an inline switch and mount it near the front of the cupboard as well for easy access. Play with it and see what works for you.<\/p><p>Please don't hesitate to ask questions, either below in the comments or PM. Have fun building!<\/p><p>EDIT: I decided that it wasn't bright enough, so I went back and used almost the whole 5 meter strand of lights, putting two on each side of the corner. Compare the last two images and tell me what you think. Two 4 ft. strands off to the left and two 3.5 ft. strands off to the right. I then added a rocker switch in line from the transformer to the rectifier and mounted it under the cabinet, up front where it is easy to get to but still tucked away. It makes such a big difference with more lights. And the wife is happy, so there's that!<\/p>"
}]
)

Guide.create(
title: "How to Convince Your Parents to Get You a Pet?",
photo_url: "https://cdn.instructables.com/FAS/64XB/HWMYFY1H/FAS64XBHWMYFY1H.LARGE.jpg",
author_id: 1,
body: "Trust me it works!"
)
Step.create( [
    {   guide_id: 3,
        title: "How to Convince Your Parents to Get You a Pet?",
        photo_url: "https://cdn.instructables.com/FJY/ECHG/HWMYFPQL/FJYECHGHWMYFPQL.LARGE.jpg",
        body: "<p>As we all know everyone likes pets,but not all of us can get them,only because parents don't let them,<\/p><p>that is why I will help you today!<\/p><p>Just follow these steps and you will get your furry,I will straight away tell you that it might not work,so please if it wont no mean comment.<\/p>",
    },
    {   guide_id: 3,
        photo_url: "https://cdn.instructables.com/FAZ/07BZ/HWMYFRXX/FAZ07BZHWMYFRXX.LARGE.jpg",
        title: "Decide What Pet You Want.",
        body: "<p>Before you do anything you should decide what pet would be best for you,<\/p><p>to do it think about how much space you have in your home,how much money you will be able to spend on the pet every month,if you have any allergies(or some one in your family),how much time you would spend on your pet and so on,you could even find a quiz and decide what pet you want on it!<\/p>",
    },
    {   guide_id: 3,
        photo_url: "https://cdn.instructables.com/FHI/TURJ/HWMYFTEJ/FHITURJHWMYFTEJ.LARGE.jpg",
        title: "Find Information About the Pet You Chose!",
        body: "<p>Then you will want to find something out about the pet you chose,like what you need to buy for it,or some facts so these such things this will be useful for the other steps.<\/p>",
    },
    {   guide_id: 3,
        title: "Write Everything You Found Out in a Note Book",
        photo_url: "https://cdn.instructables.com/FCX/5JHN/HWMYFUM7/FCX5JHNHWMYFUM7.LARGE.jpg",
        body: "<p>After that write everything you found out in a notebook it will be useful<\/p>"
    },
    {   guide_id: 3,
        photo_url: "https://cdn.instructables.com/FG6/DVYP/HWMYFW7E/FG6DVYPHWMYFW7E.LARGE.jpg",
        title: "Write Your Parents a Letter",
        body: "<p>So then write a letter to your parents about the pet,it should be about everything you found out about the pet,why you want it,and what you promise to do,then give it to them<\/p><p>It should be something like that:<\/p><p>Dear mom and dad,<\/p><p>I am writing to you to tell you that I really wanted a pet recently,and I found out lots of facts about <\/p><p>the pet I want,so it is (the pet you chose here).<\/p><p>I found out these things about them:<\/p><p>1.(fact)<\/p><p>2.(fact)<\/p><p>(and more facts)<\/p><p>I want a pet because I would love a loyal companian,I would love playing with it, training it.<\/p><p>I will (depends on what pet you want)<\/p><p>from your (son or daughter)<\/p><p>(your name)<\/p>",
  },
  {   guide_id: 3,
      title: "Save Money(if It Didn't Work Keep Reading)",
      photo_url: "https://cdn.instructables.com/FL9/X86D/HWMYFXGJ/FL9X86DHWMYFXGJ.LARGE.jpg",
      body: "<p>Say that you will save money,and you will buy everything for the pet,but for your parents to buy the pet,<\/p><p>it might be always a problem that they say it costs a lot!<\/p><p>If it not a problem with money,then just always have a answer for a problem,like if your parents would say that pet stinks,say that you will open windows clean cage  and stuff<\/p>",
  },
  {   guide_id: 3,
      title: "If It Didn't Work Then Try Again in a Few Weeks",
      photo_url: "https://cdn.instructables.com/FMY/2DX9/HWMYFXQP/FMY2DX9HWMYFXQP.LARGE.jpg",
      body: "<p>So by now you might have pet if you do congrats if you don't try again in a few weeks because you don't want to<\/p><p>make your parents annoyed,so try and try<\/p>",
  }
]
)

Guide.create(
title: "TURTLE!",
photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/sea-turtle-swimming_na71rn.jpg",
author_id: 1,
body: "Look at this turtle!!"
)

Guide.create(
title: "cookies!",
photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/640px-Chocolate_Chip_Cookies_-_kimberlykv_mfvoeo.jpg",
author_id: 1,
body: "Have some cookies!"
)

Step.create(
    guide_id: 5,
    title: "kermit loves cookies",
    body: "please make some cookies"
)

Guide.create(
title: "TOAST",
photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_3_ti3l5k.jpg",
author_id: 1,
body: "how do you make toast?"
)

Comment.create(
body: "Kermit, can you make better guides?",
author_id: 7,
guide_id: 6
)
Comment.create(
body: "I think my guides are awesome",
author_id: 1,
guide_id: 6
)

Step.create(
    guide_id: 6,
    title: "use a toaster",
    body: "don't forget to buy bread"
)

Guide.create(
title: "TURTLE",
photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/sea-turtle-swimming_na71rn.jpg",
author_id: 1,
body: "Look at this turtle!!"
)
Guide.create(
title: "Another TURTLE!",
photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/sea-turtle-swimming_na71rn.jpg",
author_id: 1,
body: "Look at this turtle!!"
)
Guide.create(
title: "three TURTLEs!",
photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/sea-turtle-swimming_na71rn.jpg",
author_id: 1,
body: "Look at this turtle!!"
)

Comment.create(
body: "Thanks for the awesome guide!",
author_id: 2,
guide_id: 1
)
Comment.create(
body: "Please make more guides like this one",
author_id: 7,
guide_id: 2
)


things = [
{
"id" => "EHGJ15IHFPTI285",
"url" => "/id/Aquaponics/",
"title" => "Aquaponics",
"category" => "workshop",
"channel" => "hydroponics",
"author" => "rokey94",
"publishDate" => "Mon Apr 29 16:35:48 PDT 2013",
"imageUrl" => "https://cdn.instructables.com/FWS/42SF/HFPTI2HL/FWS42SFHFPTI2HL.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FWS/42SF/HFPTI2HL/FWS42SFHFPTI2HL.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FWS/42SF/HFPTI2HL/FWS42SFHFPTI2HL.RECTANGLE1.jpg",
"featured" => false,
"views" => 33976,
"favorites" => 197,
"instructableType" => "I"
},
{
"id" => "E2RVTHRIACE7JWT",
"url" => "/id/Wet-Felt-Realistic-Stones-using-a-Washing-Machine/",
"title" => "Wet Felt Realistic Stones using a Washing Machine",
"category" => "craft",
"channel" => "fiber-arts",
"author" => "AmberI",
"publishDate" => "Thu Aug 20 14:02:45 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/FYU/AWN3/IDK2M2KO/FYUAWN3IDK2M2KO.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FYU/AWN3/IDK2M2KO/FYUAWN3IDK2M2KO.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FYU/AWN3/IDK2M2KO/FYUAWN3IDK2M2KO.RECTANGLE1.jpg",
"featured" => true,
"views" => 10587,
"favorites" => 120,
"instructableType" => "I"
},
{
"id" => "E06MET5IEQXUJ6P",
"url" => "/id/Make-a-Slimline-Pen/",
"title" => "Make a Slimline Pen",
"category" => "workshop",
"channel" => "woodworking",
"author" => "FourOaksCrafts",
"publishDate" => "Sun Sep 20 07:21:44 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/FBL/521W/IEQXUTDV/FBL521WIEQXUTDV.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FBL/521W/IEQXUTDV/FBL521WIEQXUTDV.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FBL/521W/IEQXUTDV/FBL521WIEQXUTDV.RECTANGLE1.jpg",
"featured" => true,
"views" => 10579,
"favorites" => 148,
"instructableType" => "I"
},
{
"id" => "ERAHPZ1I7RGEO1O",
"url" => "/id/Giroscope-led-controll-with-Arduino/",
"title" => "Gyroscope Led Control With Arduino",
"category" => "technology",
"channel" => "arduino",
"author" => "danionescu",
"publishDate" => "Sat Mar 28 14:54:34 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/FO8/G5BV/I7RGF37X/FO8G5BVI7RGF37X.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FO8/G5BV/I7RGF37X/FO8G5BVI7RGF37X.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FO8/G5BV/I7RGF37X/FO8G5BVI7RGF37X.RECTANGLE1.jpg",
"featured" => false,
"views" => 11663,
"favorites" => 56,
"instructableType" => "I"
},
{
"id" => "ESLQSXMIN35Y4SJ",
"url" => "/id/How-to-Wear-Kerala-Style-Saree-Step-by-Step-Quick-/",
"title" => "How to Wear Kerala Style Saree Step by Step - Quick Sari Draping Tutorial",
"category" => "costumes",
"channel" => "makeup",
"author" => "superaudiomadras",
"publishDate" => "Mon Apr 25 03:15:20 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/FLW/IP2S/IN35Y5AL/FLWIP2SIN35Y5AL.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FLW/IP2S/IN35Y5AL/FLWIP2SIN35Y5AL.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FLW/IP2S/IN35Y5AL/FLWIP2SIN35Y5AL.RECTANGLE1.jpg",
"featured" => false,
"views" => 10584,
"favorites" => 0,
"instructableType" => "I"
},
{
"id" => "EXGT6ACHO7XEVER",
"url" => "/id/Kirigami-Simple-Escher-Staircase/",
"title" => "Kirigami Simple Escher Staircase",
"category" => "craft",
"channel" => "paper",
"author" => "reynosof",
"publishDate" => "Sun Nov 24 20:39:09 PST 2013",
"imageUrl" => "https://cdn.instructables.com/FZ5/PJ2O/HO7XNBE2/FZ5PJ2OHO7XNBE2.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FZ5/PJ2O/HO7XNBE2/FZ5PJ2OHO7XNBE2.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FZ5/PJ2O/HO7XNBE2/FZ5PJ2OHO7XNBE2.RECTANGLE1.jpg",
"featured" => false,
"views" => 26786,
"favorites" => 66,
"instructableType" => "I"
},
{
"id" => "ECA13XTGFRWR9YT",
"url" => "/id/How-to-Make-a-Babydoll-Nightie-Dress-from-2-Mens-/",
"title" => "How to Make a Babydoll Nightie Dress from 2 Men's Shirts",
"category" => "craft",
"channel" => "fashion",
"author" => "carlyjcais",
"publishDate" => "Mon Nov 08 09:40:56 PST 2010",
"imageUrl" => "https://cdn.instructables.com/F53/FSES/GG4A6OAA/F53FSESGG4A6OAA.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F53/FSES/GG4A6OAA/F53FSESGG4A6OAA.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F53/FSES/GG4A6OAA/F53FSESGG4A6OAA.RECTANGLE1.jpg",
"featured" => true,
"views" => 33271,
"favorites" => 206,
"instructableType" => "I"
},
{
"id" => "ET4PJ6JIUG0NTIG",
"url" => "/id/Build-a-Caja-China-Roast-a-Pig-in-a-Box/",
"title" => "Build a Caja China ~ Roast a Pig in a Box",
"category" => "food",
"channel" => "bbq-and-grilling",
"author" => "slohcooker",
"publishDate" => "Mon Oct 31 22:26:32 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/FFD/T8K5/IUYD5R64/FFDT8K5IUYD5R64.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FFD/T8K5/IUYD5R64/FFDT8K5IUYD5R64.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FFD/T8K5/IUYD5R64/FFDT8K5IUYD5R64.RECTANGLE1.jpg",
"featured" => true,
"views" => 10623,
"favorites" => 67,
"instructableType" => "I"
},
{
"id" => "EETGE5EIWE4I3Y5",
"url" => "/id/Emboss-Case/",
"title" => "Emboss Case",
"category" => "craft",
"channel" => "art",
"author" => "rimakkuma315",
"publishDate" => "Wed Dec 07 11:52:21 PST 2016",
"imageUrl" => "https://cdn.instructables.com/F65/2145/IWE4JSC2/F652145IWE4JSC2.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F65/2145/IWE4JSC2/F652145IWE4JSC2.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F65/2145/IWE4JSC2/F652145IWE4JSC2.RECTANGLE1.jpg",
"featured" => true,
"views" => 13856,
"favorites" => 17,
"instructableType" => "I"
},
{
"id" => "E7NAQ5YIK1HRDG1",
"url" => "/id/Arduino-Realtime-Clock-Using-Ds1302/",
"title" => "Arduino realtime clock using ds1302",
"category" => "technology",
"channel" => "arduino",
"author" => "TechMaker_TM",
"publishDate" => "Sun Jan 31 08:24:32 PST 2016",
"imageUrl" => "https://cdn.instructables.com/F95/U08S/IK1HRE9Y/F95U08SIK1HRE9Y.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F95/U08S/IK1HRE9Y/F95U08SIK1HRE9Y.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F95/U08S/IK1HRE9Y/F95U08SIK1HRE9Y.RECTANGLE1.jpg",
"featured" => false,
"views" => 10613,
"favorites" => 24,
"instructableType" => "I"
},
{
"id" => "EQ8RU7TI7L6UX8Z",
"url" => "/id/Arduino-multiple-timer-Day-based-and-alarm-based/",
"title" => "Arduino multiple timer. Day based and alarm based",
"category" => "technology",
"channel" => "electronics",
"author" => "clepcea",
"publishDate" => "Tue Mar 24 09:57:28 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/F7O/9JRD/I7L6V8TC/F7O9JRDI7L6V8TC.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F7O/9JRD/I7L6V8TC/F7O9JRDI7L6V8TC.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F7O/9JRD/I7L6V8TC/F7O9JRDI7L6V8TC.RECTANGLE1.jpg",
"featured" => false,
"views" => 11361,
"favorites" => 41,
"instructableType" => "I"
},
{
"id" => "EAGRB4TGTGCR2RZ",
"url" => "/id/How-to-addupdate-CD-Text-on-Audio-CD/",
"title" => "How to add/update CD-Text on Audio CD",
"category" => "technology",
"channel" => "audio",
"author" => "newcyberian",
"publishDate" => "Tue Oct 11 13:41:40 PDT 2011",
"imageUrl" => "https://cdn.instructables.com/FUY/BZLK/GTMP7U7Z/FUYBZLKGTMP7U7Z.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FUY/BZLK/GTMP7U7Z/FUYBZLKGTMP7U7Z.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FUY/BZLK/GTMP7U7Z/FUYBZLKGTMP7U7Z.RECTANGLE1.jpg",
"featured" => false,
"views" => 30608,
"favorites" => 6,
"instructableType" => "I"
},
{
"id" => "EZG4NVOHVGXMMC1",
"url" => "/id/Voice-Activated-Led-ARDUINO-and-ANDROID/",
"title" => "Voice Activated Lights / Led (ARDUINO and ANDROID)",
"category" => "technology",
"channel" => "arduino",
"author" => "parth_bhat",
"publishDate" => "Thu May 22 07:46:50 PDT 2014",
"imageUrl" => "https://cdn.instructables.com/F0N/M67U/HVGXMU6E/F0NM67UHVGXMU6E.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F0N/M67U/HVGXMU6E/F0NM67UHVGXMU6E.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F0N/M67U/HVGXMU6E/F0NM67UHVGXMU6E.RECTANGLE1.jpg",
"featured" => false,
"views" => 17473,
"favorites" => 67,
"instructableType" => "I"
},
{
"id" => "E4MUG6WH82UNEQC",
"url" => "/id/simple-electronic-high-voltage-shocker-device/",
"title" => "simple electronic high voltage shocker device",
"category" => "technology",
"channel" => "electronics",
"author" => "resistanceisfutileiflessthan1ohm",
"publishDate" => "Thu Oct 11 12:07:34 PDT 2012",
"imageUrl" => "https://cdn.instructables.com/F4R/8YQK/H82UESNT/F4R8YQKH82UESNT.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F4R/8YQK/H82UESNT/F4R8YQKH82UESNT.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F4R/8YQK/H82UESNT/F4R8YQKH82UESNT.RECTANGLE1.jpg",
"featured" => false,
"views" => 26736,
"favorites" => 20,
"instructableType" => "I"
},
{
"id" => "E1068PXI0YG14S7",
"url" => "/id/Helmet-paint/",
"title" => "Helmet paint",
"category" => "outside",
"channel" => "bikes",
"author" => "pulkit9694",
"publishDate" => "Tue Oct 07 09:59:56 PDT 2014",
"imageUrl" => "https://cdn.instructables.com/FGM/CZV4/I0YG1BQX/FGMCZV4I0YG1BQX.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FGM/CZV4/I0YG1BQX/FGMCZV4I0YG1BQX.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FGM/CZV4/I0YG1BQX/FGMCZV4I0YG1BQX.RECTANGLE1.jpg",
"featured" => false,
"views" => 11682,
"favorites" => 12,
"instructableType" => "I"
},
{
"id" => "E1JYL54FP8NM71S",
"url" => "/id/Tank-Platform/",
"title" => "Tank Platform",
"category" => "technology",
"channel" => "robots",
"author" => "Sparkington",
"publishDate" => "Sat Jan 03 22:00:14 PST 2009",
"imageUrl" => "https://cdn.instructables.com/FGP/THGF/FPIOLA2P/FGPTHGFFPIOLA2P.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FGP/THGF/FPIOLA2P/FGPTHGFFPIOLA2P.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FGP/THGF/FPIOLA2P/FGPTHGFFPIOLA2P.RECTANGLE1.jpg",
"featured" => false,
"views" => 49989,
"favorites" => 83,
"instructableType" => "I"
},
{
"id" => "EH5SKPQH7KZ27GM",
"url" => "/id/Arduino-Microcontroller-Projects/",
"title" => "Arduino Microcontroller Projects",
"category" => "technology",
"channel" => "arduino",
"author" => "janisalnis",
"publishDate" => "Fri Sep 28 02:54:22 PDT 2012",
"imageUrl" => "https://cdn.instructables.com/FWO/H1UA/H742SYEA/FWOH1UAH742SYEA.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FWO/H1UA/H742SYEA/FWOH1UAH742SYEA.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FWO/H1UA/H742SYEA/FWOH1UAH742SYEA.RECTANGLE1.jpg",
"featured" => false,
"views" => 39278,
"favorites" => 98,
"instructableType" => "I"
},
{
"id" => "EKSHYWKIDOVPHXS",
"url" => "/id/Best-Sealed-Lead-Acid-Battery-Recovery/",
"title" => "Old SLA Battery Recovery",
"category" => "technology",
"channel" => "science",
"author" => "Science Tower",
"publishDate" => "Sun Aug 23 21:56:45 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/FLD/RU1N/IDOVPZBD/FLDRU1NIDOVPZBD.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FLD/RU1N/IDOVPZBD/FLDRU1NIDOVPZBD.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FLD/RU1N/IDOVPZBD/FLDRU1NIDOVPZBD.RECTANGLE1.jpg",
"featured" => false,
"views" => 10589,
"favorites" => 18,
"instructableType" => "I"
},
{
"id" => "EKPJL67IM6J7RBF",
"url" => "/id/DIY-Exercise-Ball-Cover/",
"title" => "DIY Exercise Ball Cover",
"category" => "home",
"channel" => "health",
"author" => "wold630",
"publishDate" => "Thu Mar 24 19:15:31 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/FVM/KKGI/IM6J9BAT/FVMKKGIIM6J9BAT.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FVM/KKGI/IM6J9BAT/FVMKKGIIM6J9BAT.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FVM/KKGI/IM6J9BAT/FVMKKGIIM6J9BAT.RECTANGLE1.jpg",
"featured" => true,
"views" => 10589,
"favorites" => 43,
"instructableType" => "I"
},
{
"id" => "EMVYAFDGD0R0ISM",
"url" => "/id/Kivik-one-seat-section-with-one-arm/",
"title" => "Kivik one seat section with one arm",
"category" => "workshop",
"channel" => "furniture",
"author" => "jasonsamuels",
"publishDate" => "Sun Aug 22 23:53:36 PDT 2010",
"imageUrl" => "https://cdn.instructables.com/FR8/SZZ7/GD2J24HE/FR8SZZ7GD2J24HE.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FR8/SZZ7/GD2J24HE/FR8SZZ7GD2J24HE.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FR8/SZZ7/GD2J24HE/FR8SZZ7GD2J24HE.RECTANGLE1.jpg",
"featured" => false,
"views" => 32922,
"favorites" => 6,
"instructableType" => "I"
},
{
"id" => "ECQJYMXHRCK4ID5",
"url" => "/id/Simple-and-Cheap-Locker-Shelf/",
"title" => "Simple and Cheap Locker Shelf",
"category" => "workshop",
"channel" => "organizing",
"author" => "Chimera Dragonfang",
"publishDate" => "Sat Feb 15 15:58:30 PST 2014",
"imageUrl" => "https://cdn.instructables.com/FY3/IT1J/HRPBJ070/FY3IT1JHRPBJ070.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FY3/IT1J/HRPBJ070/FY3IT1JHRPBJ070.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FY3/IT1J/HRPBJ070/FY3IT1JHRPBJ070.RECTANGLE1.jpg",
"featured" => false,
"views" => 13497,
"favorites" => 16,
"instructableType" => "I"
},
{
"id" => "EBQ1NH0IWMQU59O",
"url" => "/id/DIY-CNC-With-Simple-Tools/",
"title" => "DIY CNC with simple tools",
"category" => "technology",
"channel" => "cnc",
"author" => "krieglers",
"publishDate" => "Tue Dec 20 00:44:05 PST 2016",
"imageUrl" => "https://cdn.instructables.com/FK2/XT94/IWWFJCLX/FK2XT94IWWFJCLX.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FK2/XT94/IWWFJCLX/FK2XT94IWWFJCLX.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FK2/XT94/IWWFJCLX/FK2XT94IWWFJCLX.RECTANGLE1.jpg",
"featured" => true,
"views" => 10602,
"favorites" => 214,
"instructableType" => "I"
},
{
"id" => "E4QB88SIVHQGBZI",
"url" => "/id/How-to-Communicate-Neo-6M-GPS-to-Arduino/",
"title" => "Tutorial to communicate Neo-6M GPS to Arduino ",
"category" => "technology",
"channel" => "arduino",
"author" => "mybotic",
"publishDate" => "Wed Nov 16 19:52:08 PST 2016",
"imageUrl" => "https://cdn.instructables.com/FWT/APRP/IVHQMTI0/FWTAPRPIVHQMTI0.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FWT/APRP/IVHQMTI0/FWTAPRPIVHQMTI0.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FWT/APRP/IVHQMTI0/FWTAPRPIVHQMTI0.RECTANGLE1.jpg",
"featured" => true,
"views" => 10635,
"favorites" => 61,
"instructableType" => "I"
},
{
"id" => "E7QLWRSGU4MC749",
"url" => "/id/MOT-Spot-Welder-1/",
"title" => "MOT Spot Welder",
"category" => "workshop",
"channel" => "tools",
"author" => "Gaark",
"publishDate" => "Sun Oct 23 20:17:24 PDT 2011",
"imageUrl" => "https://cdn.instructables.com/FD5/B5HQ/GU4IRGIF/FD5B5HQGU4IRGIF.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FD5/B5HQ/GU4IRGIF/FD5B5HQGU4IRGIF.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FD5/B5HQ/GU4IRGIF/FD5B5HQGU4IRGIF.RECTANGLE1.jpg",
"featured" => false,
"views" => 28680,
"favorites" => 53,
"instructableType" => "I"
},
{
"id" => "E32GISQI8ZQWLAV",
"url" => "/id/GE-Front-Load-Washer-Control-Board-Replacement/",
"title" => "GE Front Load Washer Control Board Replacement",
"category" => "workshop",
"channel" => "repair",
"author" => "MadMonk67",
"publishDate" => "Mon Apr 27 11:41:40 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/F2S/W0CB/I8ZQX9W4/F2SW0CBI8ZQX9W4.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F2S/W0CB/I8ZQX9W4/F2SW0CBI8ZQX9W4.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F2S/W0CB/I8ZQX9W4/F2SW0CBI8ZQX9W4.RECTANGLE1.jpg",
"featured" => false,
"views" => 11268,
"favorites" => 6,
"instructableType" => "I"
},
{
"id" => "EOMIW2WG51GRSO7",
"url" => "/id/I2C-Controlled-7-Segment-LED-Display/",
"title" => "I2C Controlled 7 Segment LED Display",
"category" => "technology",
"channel" => "leds",
"author" => "nolte919",
"publishDate" => "Thu Feb 04 23:29:51 PST 2010",
"imageUrl" => "https://cdn.instructables.com/FIL/F5LA/G57040NB/FILF5LAG57040NB.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FIL/F5LA/G57040NB/FILF5LAG57040NB.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FIL/F5LA/G57040NB/FILF5LAG57040NB.RECTANGLE1.jpg",
"featured" => false,
"views" => 37843,
"favorites" => 40,
"instructableType" => "I"
},
{
"id" => "EK54QXGIYKFWFDR",
"url" => "/id/LoRa-IOT-Home-Environment-Monitoring-System/",
"title" => "LoRa IOT Home Environment Monitoring System",
"category" => "technology",
"channel" => "arduino",
"author" => "RodNewHampshire",
"publishDate" => "Mon Apr 24 00:36:27 PDT 2017",
"imageUrl" => "https://cdn.instructables.com/F9I/PUT5/J1QPCBFP/F9IPUT5J1QPCBFP.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F9I/PUT5/J1QPCBFP/F9IPUT5J1QPCBFP.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F9I/PUT5/J1QPCBFP/F9IPUT5J1QPCBFP.RECTANGLE1.jpg",
"featured" => true,
"views" => 16542,
"favorites" => 278,
"instructableType" => "I"
},
{
"id" => "EM6HEYCHRWNEIEN",
"url" => "/id/How-To-Join-External-Servers-In-Mcpe/",
"title" => "How To Join External Servers In Mcpe",
"category" => "play",
"channel" => "minecraft",
"author" => "Kitay20",
"publishDate" => "Sat Feb 22 06:11:11 PST 2014",
"imageUrl" => "https://cdn.instructables.com/FYY/LA11/HRWNEIDX/FYYLA11HRWNEIDX.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FYY/LA11/HRWNEIDX/FYYLA11HRWNEIDX.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FYY/LA11/HRWNEIDX/FYYLA11HRWNEIDX.RECTANGLE1.jpg",
"featured" => false,
"views" => 19233,
"favorites" => 14,
"instructableType" => "I"
},
{
"id" => "E04Z27XH58PKE50",
"url" => "/id/Make-a-confetti-trap/",
"title" => "Make a confetti trap",
"category" => "play",
"channel" => "pranks-and-humor",
"author" => "craigdaniel",
"publishDate" => "Mon Aug 13 06:49:17 PDT 2012",
"imageUrl" => "http://www.instructables.com/files/deriv/FPR/ZTKN/H58P2TVZ/FPRZTKNH58P2TVZ.SQUARE2.jpg",
"square3Url" => "http://www.instructables.com/files/deriv/FPR/ZTKN/H58P2TVZ/FPRZTKNH58P2TVZ.SQUARE3.jpg",
"rectangle1Url" => "http://www.instructables.com/files/deriv/FPR/ZTKN/H58P2TVZ/FPRZTKNH58P2TVZ.RECTANGLE1.jpg",
"featured" => false,
"views" => 22586,
"favorites" => 3,
"instructableType" => "I"
},
{
"id" => "EJJTORDII6C04TC",
"url" => "/id/Shower-in-the-Jungle/",
"title" => "Shower in the Jungle",
"category" => "home",
"channel" => "gardening",
"author" => "peachesandsalt",
"publishDate" => "Mon Dec 14 17:18:54 PST 2015",
"imageUrl" => "https://cdn.instructables.com/F50/WVMV/II6C09L2/F50WVMVII6C09L2.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F50/WVMV/II6C09L2/F50WVMVII6C09L2.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F50/WVMV/II6C09L2/F50WVMVII6C09L2.RECTANGLE1.jpg",
"featured" => true,
"views" => 10609,
"favorites" => 226,
"instructableType" => "I"
},
{
"id" => "ER3CSORIZ6BUGZZ",
"url" => "/id/Real-Metal-Looking-Sword-Out-of-Pallet-Wood/",
"title" => "Real Metal Looking Sword Out of Pallet Wood",
"category" => "workshop",
"channel" => "woodworking",
"author" => "Epic Workshop",
"publishDate" => "Sat Feb 18 21:03:32 PST 2017",
"imageUrl" => "https://cdn.instructables.com/FK6/QLQ9/IZ6BUZDP/FK6QLQ9IZ6BUZDP.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FK6/QLQ9/IZ6BUZDP/FK6QLQ9IZ6BUZDP.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FK6/QLQ9/IZ6BUZDP/FK6QLQ9IZ6BUZDP.RECTANGLE1.jpg",
"featured" => true,
"views" => 10610,
"favorites" => 196,
"instructableType" => "I"
},
{
"id" => "EWPJO3MJ1QPB478",
"url" => "/id/How-to-Make-an-Electric-Go-Kart-1/",
"title" => "How to Make an Electric Go Kart",
"category" => "workshop",
"channel" => "electric-vehicles",
"author" => "austiwawa",
"publishDate" => "Sun Apr 23 12:10:51 PDT 2017",
"imageUrl" => "https://cdn.instructables.com/FKF/8G69/J1QP7P5L/FKF8G69J1QP7P5L.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FKF/8G69/J1QP7P5L/FKF8G69J1QP7P5L.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FKF/8G69/J1QP7P5L/FKF8G69J1QP7P5L.RECTANGLE1.jpg",
"featured" => true,
"views" => 33816,
"favorites" => 405,
"instructableType" => "I"
},
{
"id" => "EQQIBIKJ1CF0N0H",
"url" => "/id/Microstill/",
"title" => "Microstill",
"category" => "food",
"channel" => "homebrew",
"author" => "microstill",
"publishDate" => "Wed Apr 19 12:54:36 PDT 2017",
"imageUrl" => "https://cdn.instructables.com/F9K/0L3A/J1MF19FQ/F9K0L3AJ1MF19FQ.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F9K/0L3A/J1MF19FQ/F9K0L3AJ1MF19FQ.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F9K/0L3A/J1MF19FQ/F9K0L3AJ1MF19FQ.RECTANGLE1.jpg",
"featured" => true,
"views" => 23049,
"favorites" => 272,
"instructableType" => "I"
},
{
"id" => "EGWP935IUKEMTK9",
"url" => "/id/Reading-Temperature-From-PT100-Using-Arduino/",
"title" => "Measuring Temperature From PT100 Using Arduino",
"category" => "technology",
"channel" => "arduino",
"author" => "Roboro",
"publishDate" => "Sat Oct 22 09:42:53 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/F8R/E2I5/IUKENW5C/F8RE2I5IUKENW5C.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F8R/E2I5/IUKENW5C/F8RE2I5IUKENW5C.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F8R/E2I5/IUKENW5C/F8RE2I5IUKENW5C.RECTANGLE1.jpg",
"featured" => true,
"views" => 10655,
"favorites" => 59,
"instructableType" => "I"
},
{
"id" => "ESPOH0MHRI9842K",
"url" => "/id/Math-Formula-to-3D-printable-object/",
"title" => "Math. Formula to 3D printable object",
"category" => "technology",
"channel" => "3D-Printing",
"author" => "pictux",
"publishDate" => "Fri Feb 14 05:22:13 PST 2014",
"imageUrl" => "https://cdn.instructables.com/F6A/X7Z2/HRI984F1/F6AX7Z2HRI984F1.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F6A/X7Z2/HRI984F1/F6AX7Z2HRI984F1.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F6A/X7Z2/HRI984F1/F6AX7Z2HRI984F1.RECTANGLE1.jpg",
"featured" => false,
"views" => 22989,
"favorites" => 21,
"instructableType" => "I"
},
{
"id" => "ED7UR4VIOABODJF",
"url" => "/id/Raspberry-Pi-2-NAS-With-Owncloud-Samba-and-MiniDln/",
"title" => "Raspberry Pi 2 NAS with Owncloud, Samba and MiniDlna",
"category" => "technology",
"channel" => "raspberry-pi",
"author" => "Ksp3cialK",
"publishDate" => "Sun May 22 21:45:05 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/FEZ/W7FK/IOIU6KT0/FEZW7FKIOIU6KT0.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FEZ/W7FK/IOIU6KT0/FEZW7FKIOIU6KT0.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FEZ/W7FK/IOIU6KT0/FEZW7FKIOIU6KT0.RECTANGLE1.jpg",
"featured" => false,
"views" => 10607,
"favorites" => 45,
"instructableType" => "I"
},
{
"id" => "E7U2ZUDICLRZT32",
"url" => "/id/Popup-headlight-wink-with-arduino-and-relay-board-/",
"title" => "Popup headlight wink with arduino and relay board featuring my miata.",
"category" => "workshop",
"channel" => "cars",
"author" => "curly686",
"publishDate" => "Mon Jul 27 11:41:53 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/FQ7/4WHD/ICLRZT2W/FQ74WHDICLRZT2W.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FQ7/4WHD/ICLRZT2W/FQ74WHDICLRZT2W.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FQ7/4WHD/ICLRZT2W/FQ74WHDICLRZT2W.RECTANGLE1.jpg",
"featured" => true,
"views" => 10601,
"favorites" => 69,
"instructableType" => "I"
},
{
"id" => "ESZQMM1G68GXHJW",
"url" => "/id/Measure-Cylinder-Wear-without-a-Micrometer/",
"title" => "Measure Cylinder Wear without a Micrometer",
"category" => "workshop",
"channel" => "tools",
"author" => "Phil B",
"publishDate" => "Thu Mar 04 07:51:01 PST 2010",
"imageUrl" => "https://cdn.instructables.com/FXT/4B5Y/G68GXHJZ/FXT4B5YG68GXHJZ.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FXT/4B5Y/G68GXHJZ/FXT4B5YG68GXHJZ.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FXT/4B5Y/G68GXHJZ/FXT4B5YG68GXHJZ.RECTANGLE1.jpg",
"featured" => true,
"views" => 27335,
"favorites" => 14,
"instructableType" => "I"
},
{
"id" => "EVFDXM7IZ6D9CDD",
"url" => "/id/Stainless-Scoop/",
"title" => "Stainless Scoop",
"category" => "workshop",
"channel" => "metalworking",
"author" => "Tuomas Soikkeli",
"publishDate" => "Mon Feb 27 08:43:35 PST 2017",
"imageUrl" => "https://cdn.instructables.com/F4C/Q08H/IZ6D9O3J/F4CQ08HIZ6D9O3J.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F4C/Q08H/IZ6D9O3J/F4CQ08HIZ6D9O3J.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F4C/Q08H/IZ6D9O3J/F4CQ08HIZ6D9O3J.RECTANGLE1.jpg",
"featured" => true,
"views" => 10598,
"favorites" => 41,
"instructableType" => "I"
},
{
"id" => "E9VEA9IHFD17AAL",
"url" => "/id/Satin-Lace-Hair-Bows-12-different-patterns/",
"title" => "DIY Hair Bows (12 patterns)",
"category" => "craft",
"channel" => "fashion",
"author" => "Muhaiminah Faiz",
"publishDate" => "Mon Apr 15 11:34:50 PDT 2013",
"imageUrl" => "https://cdn.instructables.com/FN0/DG8T/IHNP7EZD/FN0DG8TIHNP7EZD.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FN0/DG8T/IHNP7EZD/FN0DG8TIHNP7EZD.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FN0/DG8T/IHNP7EZD/FN0DG8TIHNP7EZD.RECTANGLE1.jpg",
"featured" => true,
"views" => 45999,
"favorites" => 491,
"instructableType" => "I"
},
{
"id" => "ETD4ZXLG68HEEVF",
"url" => "/id/PAPER-GAMING-Pencil-wars/",
"title" => "PAPER GAMING: Pencil wars",
"category" => "play",
"channel" => "table-top",
"author" => "dungeon runner",
"publishDate" => "Sun Mar 07 10:10:22 PST 2010",
"imageUrl" => "https://cdn.instructables.com/FVC/GYH1/G68HEEVQ/FVCGYH1G68HEEVQ.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FVC/GYH1/G68HEEVQ/FVCGYH1G68HEEVQ.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FVC/GYH1/G68HEEVQ/FVCGYH1G68HEEVQ.RECTANGLE1.jpg",
"featured" => false,
"views" => 28708,
"favorites" => 36,
"instructableType" => "I"
},
{
"id" => "EITJ5O2IIUKF3V3",
"url" => "/id/Arduino-NodeMCU-ESP-12-ESP8266/",
"title" => "IoT - Arduino – NodeMCU ESP-12 ESP8266",
"category" => "technology",
"channel" => "arduino",
"author" => "IotLiveOne",
"publishDate" => "Sat Jan 02 18:27:27 PST 2016",
"imageUrl" => "https://cdn.instructables.com/FHC/HNS3/IIXJKTEZ/FHCHNS3IIXJKTEZ.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FHC/HNS3/IIXJKTEZ/FHCHNS3IIXJKTEZ.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FHC/HNS3/IIXJKTEZ/FHCHNS3IIXJKTEZ.RECTANGLE1.jpg",
"featured" => false,
"views" => 10622,
"favorites" => 36,
"instructableType" => "I"
},
{
"id" => "EPFCZEFIVO3K2SN",
"url" => "/id/Magnetic-Soap-Holder/",
"title" => "Magnetic soap holder",
"category" => "workshop",
"channel" => "home-improvement",
"author" => "DougB89",
"publishDate" => "Wed Nov 23 05:28:11 PST 2016",
"imageUrl" => "https://cdn.instructables.com/F9O/0SY6/IVO3T4B5/F9O0SY6IVO3T4B5.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F9O/0SY6/IVO3T4B5/F9O0SY6IVO3T4B5.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F9O/0SY6/IVO3T4B5/F9O0SY6IVO3T4B5.RECTANGLE1.jpg",
"featured" => true,
"views" => 10600,
"favorites" => 80,
"instructableType" => "I"
},
{
"id" => "EO5FRK4HDYZBYUN",
"url" => "/id/honda-rebel-125-upgrads-honda-cb125tdc-engine-rebu/",
"title" => "honda rebel 125 upgrads honda cb125tdc engine rebuild with some mods",
"category" => "workshop",
"channel" => "motorcycles",
"author" => "rebel diy",
"publishDate" => "Sat Mar 09 14:53:05 PST 2013",
"imageUrl" => "https://cdn.instructables.com/FAP/K703/HE07P6W3/FAPK703HE07P6W3.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FAP/K703/HE07P6W3/FAPK703HE07P6W3.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FAP/K703/HE07P6W3/FAPK703HE07P6W3.RECTANGLE1.jpg",
"featured" => false,
"views" => 26574,
"favorites" => 19,
"instructableType" => "I"
},
{
"id" => "EHEUAHLIAWCYB9L",
"url" => "/id/How-to-tie-a-two-strand-wall-knot-sinnet-paracord-/",
"title" => "How to tie a two-strand wall knot sinnet paracord lanyard",
"category" => "outside",
"channel" => "paracord",
"author" => "Stormdrane",
"publishDate" => "Sun Jun 14 22:52:02 PDT 2015",
"imageUrl" => "https://cdn.instructables.com/F89/FJLN/IAWCYE9V/F89FJLNIAWCYE9V.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/F89/FJLN/IAWCYE9V/F89FJLNIAWCYE9V.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/F89/FJLN/IAWCYE9V/F89FJLNIAWCYE9V.RECTANGLE1.jpg",
"featured" => "false",
"views" => 11384,
"favorites" => 129,
"instructableType" => "I"
},
{
"id" => "EKNO445IRLQFIB7",
"url" => "/id/Killer-Ketchup/",
"title" => "Canning Homemade Ketchup",
"category" => "food",
"channel" => "canning-and-preserves",
"author" => "Garden Girl Recipes",
"publishDate" => "Mon Aug 08 11:29:19 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/FV0/HAU7/IRLQFMMT/FV0HAU7IRLQFMMT.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FV0/HAU7/IRLQFMMT/FV0HAU7IRLQFMMT.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FV0/HAU7/IRLQFMMT/FV0HAU7IRLQFMMT.RECTANGLE1.jpg",
"featured" => "true",
"views" => 10722,
"favorites" => 98,
"instructableType" => "I"
},
{
"id" => "E8ZXKXUIPET0X9Q",
"url" => "/id/Arduino-Uno-Menu-Template/",
"title" => "Arduino Uno Menu Template",
"category" => "technology",
"channel" => "arduino",
"author" => "PaulSS",
"publishDate" => "Tue Jun 14 13:31:35 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/FSZ/BMLF/IPET1DA5/FSZBMLFIPET1DA5.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FSZ/BMLF/IPET1DA5/FSZBMLFIPET1DA5.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FSZ/BMLF/IPET1DA5/FSZBMLFIPET1DA5.RECTANGLE1.jpg",
"featured" => "false",
"views" => 10716,
"favorites" => 84,
"instructableType" => "I"
},
{
"id" => "EF22N5DI5DS3AEU",
"url" => "/id/Wood-Sculpture-Restoration/",
"title" => "Wood Sculpture Restoration",
"category" => "workshop",
"channel" => "woodworking",
"author" => "Luminous Wonder",
"publishDate" => "Mon Jan 26 14:11:16 PST 2015",
"imageUrl" => "https://cdn.instructables.com/FRE/3FT8/I5DS3NRU/FRE3FT8I5DS3NRU.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FRE/3FT8/I5DS3NRU/FRE3FT8I5DS3NRU.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FRE/3FT8/I5DS3NRU/FRE3FT8I5DS3NRU.RECTANGLE1.jpg",
"featured" => "false",
"views" => 11775,
"favorites" => 7,
"instructableType" => "I"
},
{
"id" => "ENYDQGK1NVETOMKVLK",
"url" => "/id/K-NEX-Ferris-wheel/",
"title" => "K'NEX Ferris wheel",
"category" => "play",
"channel" => "knex",
"author" => "weeman246",
"publishDate" => "Fri Nov 03 13:32:08 PST 2006",
"imageUrl" => "https://cdn.instructables.com/FI4/PORI/YHQETOMKVKK/FI4PORIYHQETOMKVKK.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FI4/PORI/YHQETOMKVKK/FI4PORIYHQETOMKVKK.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FI4/PORI/YHQETOMKVKK/FI4PORIYHQETOMKVKK.RECTANGLE1.jpg",
"featured" => "false",
"views" => 49091,
"favorites" => 9,
"instructableType" => "I"
},
{
"id" => "E14E2C1IUSLRLXK",
"url" => "/id/Arduino-Sound-Sensor-with-LED/",
"title" => "Arduino - Sound Sensor (with LED)",
"category" => "technology",
"channel" => "arduino",
"author" => "MertArduino",
"publishDate" => "Fri Oct 28 11:59:03 PDT 2016",
"imageUrl" => "https://cdn.instructables.com/FLT/6G24/IUSLRRSM/FLT6G24IUSLRRSM.SQUARE2.jpg",
"square3Url" => "https://cdn.instructables.com/FLT/6G24/IUSLRRSM/FLT6G24IUSLRRSM.SQUARE3.jpg",
"rectangle1Url" => "https://cdn.instructables.com/FLT/6G24/IUSLRRSM/FLT6G24IUSLRRSM.RECTANGLE1.jpg",
"featured" => "true",
"views" => 10779,
"favorites" => 75,
"instructableType" => "I"
}
]

things.each do |thing|
  new_user = User.find_by(username: thing["author"]) ? User.find_by(thing["author"]) : User.create(username: thing["author"], password: "123456", photo_url: thing["square3Url"])
  Guide.create(title: thing["title"], body: thing["category"], photo_url: thing["imageUrl"], author_id: new_user.id)
end



items = [{
  id: "EBT4ZRUI7MXTNDI",
  title: "Arduino Tutorials (part one - 16 Tutorial Pack) ",
  body: "Fri Mar 27 13:42:06 PDT 2015",
  photo_url: "https://cdn.instructables.com/FO0/972M/IA6M4G5T/FO0972MIA6M4G5T.SQUARE2.jpg"
},{
  id: "EOKZEO4GQKM4SGD",
  title: "Motorcycle Saddlebags from Ammunition Cases",
  body: "Tue Jul 26 13:25:53 PDT 2011",
  photo_url: "https://cdn.instructables.com/FBZ/R57R/GQKM4SKF/FBZR57RGQKM4SKF.SQUARE2.jpg"
},{
  id: "EL1YOTQGBOTPSCI",
  title: "How to reupholster a recliner seat",
  body: "Fri Jul 16 16:25:51 PDT 2010",
  photo_url: "https://cdn.instructables.com/FJV/PP07/GBOTPSD9/FJVPP07GBOTPSD9.SQUARE2.jpg"
},{
  id: "E0CDZ1HG8QJNMQB",
  title: "Painting with Colored Cement",
  body: "Fri May 07 06:16:13 PDT 2010",
  photo_url: "https://cdn.instructables.com/FIV/AHUG/G8TCTAJ6/FIVAHUGG8TCTAJ6.SQUARE2.jpg"
},{
  id: "ELA664HITCHE40O",
  title: "Flamethrower made with Hardware Store Parts",
  body: "Fri Sep 23 07:29:32 PDT 2016",
  photo_url: "https://cdn.instructables.com/FRX/OW45/ITCHEUXP/FRXOW45ITCHEUXP.SQUARE2.jpg"
},{
  id: "EI1I4O8I1EU2KLQ",
  title: "Tea Kettle Whistle Repair",
  body: "Sun Oct 19 12:56:43 PDT 2014",
  photo_url: "https://cdn.instructables.com/F5R/CUST/I1EU2PXP/F5RCUSTI1EU2PXP.SQUARE2.jpg"
},{
  id: "E4YN7H3IGWO2BP8",
  title: "Salted Caramel Mocha Frappuccino Recipe",
  body: "Mon Nov 16 11:11:01 PST 2015",
  photo_url: "https://cdn.instructables.com/FIH/AZNC/IH0YKP33/FIHAZNCIH0YKP33.SQUARE2.jpg"
},{
  id: "EVDKF9PIG6TV6EC",
  title: "Black Garlic - Probably the easiest way to make it at home!",
  body: "Sun Oct 25 20:09:55 PDT 2015",
  photo_url: "https://cdn.instructables.com/F2G/7WHM/IG6TVMQX/F2G7WHMIG6TVMQX.SQUARE2.jpg"
},{
  id: "E7IQT5AIEX4ZSSZ",
  title: "(OUTDATED) How To Flash Windows IoT Core On Raspberry Pi 2 And Access To It Through Web Browser",
  body: "Fri Oct 09 06:56:43 PDT 2015",
  photo_url: "https://cdn.instructables.com/F2H/UNGR/IFISE1SR/F2HUNGRIFISE1SR.SQUARE2.jpg"
},{
  id: "E51VPKVFCEIOGI3",
  title: "LED Mod Your Gameboy Color",
  body: "Sat Feb 09 09:18:03 PST 2008",
  photo_url: "https://cdn.instructables.com/FRT/BO30/FCEIOGFN/FRTBO30FCEIOGFN.SQUARE2.jpg"
},{
  id: "EP03NZPHVC1JERK",
  title: "Create glue-less interlocking laser cut parts with sketchup slicemodeler",
  body: "Tue Aug 26 04:22:37 PDT 2014",
  photo_url: "https://cdn.instructables.com/FRI/MCFJ/HVC1KK5J/FRIMCFJHVC1KK5J.SQUARE2.jpg"
},{
  id: "EC5ZKDKFGAWEZT0",
  title: "Easy bubble wand ",
  body: "Sat May 17 04:21:35 PDT 2008",
  photo_url: "https://cdn.instructables.com/FYT/BV04/FGAWEZSO/FYTBV04FGAWEZSO.SQUARE2.jpg"
},{
  id: "EJXPE49IR9EAEBM",
  title: "How to Add an IR Remote to a Speaker System",
  body: "Sun Jul 31 07:57:57 PDT 2016",
  photo_url: "https://cdn.instructables.com/FXM/6FXE/IR9EAGKD/FXM6FXEIR9EAGKD.SQUARE2.jpg"
},{
  id: "ELGMV9DJ0COYC7A",
  title: "Super Easy No-knead Sourdough Bread",
  body: "Mon Mar 20 15:09:17 PDT 2017",
  photo_url: "https://cdn.instructables.com/F6N/2OOG/J0IEB8S4/F6N2OOGJ0IEB8S4.SQUARE2.jpg"
},{
  id: "EOPV8UWINOTX34Q",
  title: "IoT Pill Bottle",
  body: "Mon May 02 06:31:41 PDT 2016",
  photo_url: "https://cdn.instructables.com/FLI/R23R/INPE5NCC/FLIR23RINPE5NCC.SQUARE2.jpg"
},{
  id: "E92UHSBIRKFK6HO",
  title: "Wi-fi controlled FPV rover robot (with Arduino, ESP8266 and stepper motors)",
  body: "Fri Sep 30 11:08:01 PDT 2016",
  photo_url: "https://cdn.instructables.com/FIX/47DD/ITPYQA8K/FIX47DDITPYQA8K.SQUARE2.jpg"
},{
  id: "E649GIIIC37CVV3",
  title: "Object tracking by color with Python and openCV",
  body: "Tue Jul 14 13:24:18 PDT 2015",
  photo_url: "https://cdn.instructables.com/FCI/9GOP/IC37DGDN/FCI9GOPIC37DGDN.SQUARE2.jpg"
},{
  id: "ET7T410ILCHIT8I",
  title: "Mp3 Play from SD Card with Arduino",
  body: "Sun Mar 06 15:53:25 PST 2016",
  photo_url: "https://cdn.instructables.com/FWH/5AKW/ILCHIWWP/FWH5AKWILCHIWWP.SQUARE2.jpg"
},{
  id: "ECQFIVOIZT6S7RP",
  title: "WiFi Jammer Using ESP8266",
  body: "Mon Mar 06 06:55:53 PST 2017",
  photo_url: "https://cdn.instructables.com/F1M/3KC3/J0487G1C/F1M3KC3J0487G1C.SQUARE2.jpg"
},{
  id: "ES5M0M6H7430JE6",
  title: "Arduino Night Light",
  body: "Mon Sep 24 14:43:35 PDT 2012",
  photo_url: "https://cdn.instructables.com/FNY/33E8/H7430JFA/FNY33E8H7430JFA.SQUARE2.jpg"
},{
  id: "EXF0Z2BIUHMRT2R",
  title: "A Different Ball Turning Jig for Taig Lathe",
  body: "Wed Oct 19 22:59:53 PDT 2016",
  photo_url: "https://cdn.instructables.com/F6P/0U8R/IUHMS6X7/F6P0U8RIUHMS6X7.SQUARE2.jpg"
},{
  id: "E23TLUFJ0IEGL2L",
  title: "DIY Router Table",
  body: "Tue Mar 21 15:31:24 PDT 2017",
  photo_url: "https://cdn.instructables.com/F2A/Q69L/J0IEHGOY/F2AQ69LJ0IEHGOY.SQUARE2.jpg"
},{
  id: "ES9Z4ROGY65PZZ7",
  title: "Cardboard folder/creaser",
  body: "Thu Feb 02 17:58:06 PST 2012",
  photo_url: "https://cdn.instructables.com/F79/UEIL/GY65PZZK/F79UEILGY65PZZK.SQUARE2.jpg"
},{
  id: "E4PY7OCLIVEZ0R6KJA",
  title: "Making Maple Syrup",
  body: "Thu Mar 08 19:48:28 PST 2007",
  photo_url: "https://cdn.instructables.com/FM5/PKCO/KEQEZ0R6KIG/FM5PKCOKEQEZ0R6KIG.SQUARE2.jpg"
},{
  id: "E9SZE8JGH8AGHBS",
  title: "Kill Bedbugs in your luggage",
  body: "Sun Dec 05 11:40:21 PST 2010",
  photo_url: "https://cdn.instructables.com/FG1/CZEB/GH8AGHBW/FG1CZEBGH8AGHBW.SQUARE2.jpg"
},{
  id: "EH8TG2NIP02TKRM",
  title: "How to Control an RGB LED Strip - Arduino Tutorial",
  body: "Fri Jun 03 14:24:30 PDT 2016",
  photo_url: "https://cdn.instructables.com/FHZ/L9GP/IP02U02W/FHZL9GPIP02U02W.SQUARE2.jpg"
},{
  id: "E9CX68DJ08EFC4F",
  title: "Outdoor Furniture: table and bench with tapered legs",
  body: "Thu Mar 16 12:37:17 PDT 2017",
  photo_url: "https://cdn.instructables.com/FBF/WEE9/J0COK0VV/FBFWEE9J0COK0VV.SQUARE2.jpg"
},{
  id: "ECGBLCDIVO3ABT8",
  title: "Somewhat Complete PCB Fabrication",
  body: "Tue Mar 21 10:49:43 PDT 2017",
  photo_url: "https://cdn.instructables.com/F3W/ZHIN/J0IEHXYT/F3WZHINJ0IEHXYT.SQUARE2.jpg"
},{
  id: "EWI0LB0J0IEDPBX",
  title: "A Portable Panel Saw",
  body: "Mon Mar 20 21:25:47 PDT 2017",
  photo_url: "https://cdn.instructables.com/F8E/6T6Q/J0IEHIUQ/F8E6T6QJ0IEHIUQ.SQUARE2.jpg"
},{
  id: "EJA9AAVJ0CORDID",
  title: "Make Your Own GPS SMS Security Tracking System",
  body: "Sun Mar 19 08:45:14 PDT 2017",
  photo_url: "https://cdn.instructables.com/FR1/79JC/J0CORSG0/FR179JCJ0CORSG0.SQUARE2.jpg"
},{
  id: "E3VX8JQJ0IEDQG8",
  title: "Live Edge River Coffee Table | How to Build",
  body: "Tue Mar 21 08:52:58 PDT 2017",
  photo_url: "https://cdn.instructables.com/F4D/LXDU/J0IEE4K2/F4DLXDUJ0IEE4K2.SQUARE2.jpg"
},{
  id: "E8AI61RIZYGG5KP",
  title: "Fix a Hole in Drywall",
  body: "Tue Mar 21 14:24:47 PDT 2017",
  photo_url: "https://cdn.instructables.com/FDT/29E5/J0IEFAN2/FDT29E5J0IEFAN2.SQUARE2.jpg"
},{
  id: "EZF81C8H5IRVVW8",
  title: "How to Store Tights and Stockings by Tying them into Simple Knots",
  body: "Wed Aug 08 13:12:46 PDT 2012",
  photo_url: "https://cdn.instructables.com/FOJ/JTOC/H5JVXEPI/FOJJTOCH5JVXEPI.SQUARE2.jpg"
},{
  id: "ERIWK3UIU3PZPTA",
  title: "Tutorial to interface GSM SIM900A with Arduino",
  body: "Thu Nov 03 00:42:00 PDT 2016",
  photo_url: "https://cdn.instructables.com/F5N/HAQJ/IV0AAMMD/F5NHAQJIV0AAMMD.SQUARE2.jpg"
},{
  id: "E13KOZHIG5EHJG1",
  title: "HackerBoxes 0000: DC Circuits, Software Radio, RFID, Infrared",
  body: "Wed Nov 04 09:56:18 PST 2015",
  photo_url: "https://cdn.instructables.com/FGI/GRJQ/IJQNWHUO/FGIGRJQIJQNWHUO.SQUARE2.jpg"
},{
  id: "EF71VM2HX8HN5CL",
  title: "How To Tame Animals In Minecraft",
  body: "Sat Jul 05 17:35:57 PDT 2014",
  photo_url: "https://cdn.instructables.com/F07/XHJJ/HX8HN5CA/F07XHJJHX8HN5CA.SQUARE2.jpg"
},{
  id: "EGUAJGYIRXTYP8G",
  title: "HOMEMADE CLAW MACHINE",
  body: "Sat Sep 24 12:56:58 PDT 2016",
  photo_url: "https://cdn.instructables.com/F26/6JWZ/ITHE52DS/F266JWZITHE52DS.SQUARE2.jpg"
},{
  id: "EM9QBBDHPO2G498",
  title: "How to check omr answer sheets quickly ?",
  body: "Thu Dec 26 23:55:49 PST 2013",
  photo_url: "https://cdn.instructables.com/FGA/QOTY/HPOWCK8G/FGAQOTYHPOWCK8G.SQUARE2.jpg"
},{
  id: "E9W5AIRG6MPLGC1",
  title: "Fake Matrix Virus",
  body: "Thu Mar 03 00:03:15 PST 2011",
  photo_url: "http://www.instructables.com/static/defaultIMG/default.SQUARE2.png",
},{
  id: "E747G7HIVO4N1V7",
  title: "Mechanical Xylophone",
  body: "Mon Mar 13 09:38:14 PDT 2017",
  photo_url: "https://cdn.instructables.com/FVU/B8R9/J08EB1GR/FVUB8R9J08EB1GR.SQUARE2.jpg"
},{
  id: "E06D6M0FW5H06JS",
  title: "The Pocket Tacklebox",
  body: "Wed Jun 24 12:36:06 PDT 2009",
  photo_url: "https://cdn.instructables.com/FYC/REWS/FWBNLN66/FYCREWSFWBNLN66.SQUARE2.jpg"
},{
  id: "EQBLW2SH8CVKZ3V",
  title: "Frog Eye Salad",
  body: "Sat Oct 20 15:34:28 PDT 2012",
  photo_url: "https://cdn.instructables.com/FN4/4K2H/H8CVKZ3K/FN44K2HH8CVKZ3K.SQUARE2.jpg"
},{
  id: "ERKSCH7HD4VFFFC",
  title: "What To Make With Leftover Biscuits",
  body: "Sat Feb 16 15:20:49 PST 2013",
  photo_url: "https://cdn.instructables.com/F3Z/1AI8/HD4VFFF8/F3Z1AI8HD4VFFF8.SQUARE2.jpg"
},{
  id: "EJBEYL3IU5V038M",
  title: "From Blink to Blynk, an IoT Journey on the Wings of NodeMCU ESP-12E",
  body: "Thu Oct 13 09:26:09 PDT 2016",
  photo_url: "https://cdn.instructables.com/FF7/CMM6/IU9UVGTD/FF7CMM6IU9UVGTD.SQUARE2.jpg"
},{
  id: "E1RBMUQI55MTOOK",
  title: "Use A Stove Butane Cartridge To Fill Lighters",
  body: "Tue Jan 20 17:59:27 PST 2015",
  photo_url: "https://cdn.instructables.com/F22/G651/I55MTNKU/F22G651I55MTNKU.SQUARE2.jpg"
},{
  id: "EMZIAHBIEFZV05Z",
  title: "EXCAVATOR WITH SYRINGE HYDRAULICS",
  body: "Fri Sep 11 07:26:34 PDT 2015",
  photo_url: "https://cdn.instructables.com/FK5/RNXE/IJYUM9BO/FK5RNXEIJYUM9BO.SQUARE2.jpg"
},{
  id: "E979UQAJ08ENEWS",
  title: "Simple, Low Cost and Accurate Stepper Motor Driver",
  body: "Thu Mar 16 03:43:42 PDT 2017",
  photo_url: "https://cdn.instructables.com/F5Z/7DFX/J08ENNUV/F5Z7DFXJ08ENNUV.SQUARE2.jpg"
},{
  id: "EH49DWWF4SAQROX",
  title: "Radio Direction Finding Antenna for VHF",
  body: "Tue Jul 31 17:47:02 PDT 2007",
  photo_url: "https://cdn.instructables.com/FFM/KEMI/F4SAQRPT/FFMKEMIF4SAQRPT.SQUARE2.jpg"
},{
  id: "EXU7JLTHY5Y4D64",
  title: "\"Dry Ice\" Ice Cream!",
  body: "Sun Aug 03 19:58:31 PDT 2014",
  photo_url: "https://cdn.instructables.com/F8K/HLCL/HYC6GK7S/F8KHLCLHYC6GK7S.SQUARE2.jpg"
},{
  id: "EW8TPU5IJEKMJ4S",
  title: "Web Connected Weather Station",
  body: "Mon Jan 18 09:18:23 PST 2016",
  photo_url: "https://cdn.instructables.com/FIR/0NPF/IJIX75WM/FIR0NPFIJIX75WM.SQUARE2.jpg"
}]

items.each do |item|
  Guide.create(title: item[:title], body: item[:body], photo_url: item[:photo_url], author_id: rand(8))
end
