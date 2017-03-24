# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(id: 1, username: "demo_user", password: "password", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_2_f2rqdk.jpg")
User.create(id: 2, username: "vinson", password: "123456", photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114247/Tamarin_portrait_2_edit3_pbodko.jpg")

# Guide.create(title: "guide1", body: "this is a test guide", author_id: 1, photo_url: 'http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/640px-Chocolate_Chip_Cookies_-_kimberlykv_mfvoeo.jpg')
#
# Step.create(title: "step test", body: "this is step1", guide_id: 1, photo_url: 'http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/images_3_ti3l5k.jpg')
# Step.create(title: "step test2", body: "this is step2", guide_id: 1, photo_url: "http://res.cloudinary.com/cloud-vinson/image/upload/v1490114246/download_iy40py.jpg")

User.create(id: 3, username: "EmilyRoxPrincess", password: "123456", photo_url: "https://cdn.instructables.com/FNG/J1IC/HWLD7TVI/FNGJ1ICHWLD7TVI.SQUARE.jpg")
User.create(id: 4, username: "brmarcum", password: "123456", photo_url: "https://cdn.instructables.com/FCT/YNH8/HVXBXI2V/FCTYNH8HVXBXI2V.SQUARE.jpg")

Guide.create([{
    id: 1,
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
id: "EESD4M6HWLD7R12",
title: "Easy Under-Cabinet Lighting",
photo_url: "https://cdn.instructables.com/FIY/MP3G/HWVAO5LM/FIYMP3GHWVAO5LM.LARGE.jpg",
author_id: 4,
body: "How to add some lighting"
)
Step.create( [
    {   guide_id: "EESD4M6HWLD7R12",
        title: "Easy Under-Cabinet Lighting",
        photo_url: "https://cdn.instructables.com/F2V/WMXZ/HWVAO4YQ/F2VWMXZHWVAO4YQ.LARGE.jpg",
        body: "<p>My apartment has terrible lighting in the kitchen. There is one big fluorescent light on the ceiling and then the two lights over the stove from the vent hood. The problem is that there is a big dead space on the counter near the sink where there isn't any good light. So I made an under-cabinet light using some LED strips. <\/p>",
    },
    {   guide_id: "EESD4M6HWLD7R12",
        photo_url: "https://cdn.instructables.com/FL8/ET76/HWLD7RMX/FL8ET76HWLD7RMX.LARGE.jpg",
        title: "Parts and Tools List and Safety",
        body: "I don't want to have to run this on batteries, and since outlets are abundant, I built it to run on AC mains voltage. That means that we are dealing with exposed AC lines, so take extra care around those wires. Make sure anyone who wanders into the room is aware of the danger. And soldering irons are hot, so don't burn yourself. Trust me on that one.<br><br>This is a really simple build with a short list of stuff you need. I get most of my small parts from salvaging old electronics.<br><br>Parts:<br><br>- 1 AC transformer. An output of 12VAC is what we are looking for, regardless of whether you have 110VAC or 220VAC.<br><br>- AC power cord (not pictured)<br><br>- 4 rectifier diodes. 1N4001, 1N4004, 1N4007 should all work here. They are rated for 1 amp, which is way more than we will need here, but check your LED specs to be safe. Alternatively, you could use a discrete bridge rectifier here as well.<br><br>- small PCB<br><br>- solid color LED lights. Multi-color RGB LEDs with only three copper pads won't work here without a microcontroller because you need a data signal. If you use RGB LEDs, they should have four copper pads, otherwise they should only have two pads. I bought these.<br><br>- 18 gauge speaker hook-up wire<br><br>- mounting hardware, e.g. double-sided tape, glue, screws etc.<br><br>- heat shrink<br><br>Normally I would use a plastic enclosure. However, I found a transformer that is completely sealed and the wires will be completely covered with either heat shrink or epoxy, so I didn't use one this time. You must ensure that you completely insulate against the AC power so there is no risk of exposure.<br><br>Tools: (These are just the tools I used. Make it work for you with whatever you need, just be safe)<br><br>- soldering iron and solder<br><br>- saw or rotary tool<br><br>- wire cutter/stripper<br><br>- drill bit<br><br>- hot air gun for heat shrink<br><br>- epoxy to seal it all up<br><br>"

    },
    {   guide_id: "EESD4M6HWLD7R12",
        photo_url: "https://cdn.instructables.com/FOA/SE8U/HWLD7S40/FOASE8UHWLD7S40.LARGE.jpg",
        title: "Design",
        body: "<p>The transformer should output about 12VAC. The LEDs I bought are rated for 12VDC. In order to convert AC to DC, the AC needs to be rectified using diodes. But LEDs are diodes (<strong>L<\/strong>ight <strong>E<\/strong>mitting <strong>D<\/strong>iodes), so technically this circuit will work fine without even using the bridge rectifier. Just plug the LEDs to the transformer output and away we go. The problem is that the LEDs will flash about 50-60 times per second with each rise of the AC sine wave. When the AC voltage goes negative, the LEDs will turn off because that's how diodes work. You only get power through a diode in one direction not both. So they are flashing 50 times per second, but they aren't even on for the entire flash period, maybe about 40% or so. The point is that you will notice the flashing. The bridge rectifier makes all of the negative AC voltages turn positive, so the flashing is twice as fast and the lights are on for more time (as a percentage) per flash period. You can see the difference in the o-scope readout in image 2. The red line shows the full 12VAC wave going positive and negative. The blue line has been rectified so the voltage is always positive. If we wanted to fully convert to DC voltage, we would add a 470uF electrolytic capacitor across the DC output and then feed that signal into a voltage regulator. The output from that is a very clean and stable DC voltage. I used that design in <a href=\"https://www.instructables.com/id/Motion-Activated-AC-Switch/\" rel=\"nofollow\">this Instructable<\/a>.<\/p><p>One thing to note with this project is that the power supply is unregulated, so any fluctuations in the grid will get sent straight to the LEDs. I don't expect them to survive a large spike, but it only cost me about $3 for the whole project, so I'm not really worried about it.<\/p>"

    },
    {   guide_id: "EESD4M6HWLD7R12",
        title: "Building",
        photo_url: "https://cdn.instructables.com/FLH/TMVJ/HWLD7R19/FLHTMVJHWLD7R19.LARGE.jpg",
        body: "<p>I always build on a breadboard before putting anything on a PCB. I recommend you do the same. The red and black wires in the image are simply to show where the relative positive and ground voltages are. This is not a clean signal by any means, but all voltage is now positive, so we do need to keep the two wires straight.<\/p><p>The LED strip has little copper pads spaced between every three LEDs. Cut it just to the left of those pads, cut off the plastic coating and tin the pads to make soldering to the wires easier. Make sure you tin the wires too. In my application I used two short pieces of the LED strip on each side of the cabinets. I had to turn the strip over and very carefully scrape away the plastic coating to expose the copper underneath. I then soldered to the back side of the first length of LEDs and then connected that to the front side of the next length.<\/p><p>You can connect several individual lengths of LEDs to the same output connections on the bridge rectifier. I made four different lengths of 18 LEDs, then put two together end to end to make two lengths of 36. Those two lengths are then connected together at the rectifier output, one strand off to the right, the other off to the left. Just keep in mind the power requirements for each LED and the limitations of the parts, specifically the diodes.<\/p><p>The last image shows the connections all nice and finished with the heat shrink. Be careful when handling the LED strip with wires soldered on. I had one of the copper pads break off with the wire and I lost connection. I was able to fix it by attaching the wires to the back instead. So get the heat shrink on as fast as you can to give the joint some strength.<\/p>"
    },
    {   guide_id: "EESD4M6HWLD7R12",
        photo_url: "https://cdn.instructables.com/FQJ/DMX4/HWLD7R16/FQJDMX4HWLD7R16.LARGE.jpg",
        title: "Finishing and Mounting",
        body: "<p>I finished mine with a thick coat of epoxy.<\/p><p>Once everything is connected right, the only thing left is to mount it. The LEDs come with 3M double-sided tape, but I used some more just to be sure. The transformer was screwed to the underside of the cabinet out of the way. At some point in the future I will be adding a microcontroller and proximity sensor to toggle the lights automatically, but for now I'm happy with the result. I will probably make a couple more versions, one for my desk and one for my wife's as well. If you don't want the microcontroller, you could very easily install an inline switch and mount it near the front of the cupboard as well for easy access. Play with it and see what works for you.<\/p><p>Please don't hesitate to ask questions, either below in the comments or PM. Have fun building!<\/p><p>EDIT: I decided that it wasn't bright enough, so I went back and used almost the whole 5 meter strand of lights, putting two on each side of the corner. Compare the last two images and tell me what you think. Two 4 ft. strands off to the left and two 3.5 ft. strands off to the right. I then added a rocker switch in line from the transformer to the rectifier and mounted it under the cabinet, up front where it is easy to get to but still tucked away. It makes such a big difference with more lights. And the wife is happy, so there's that!<\/p>"
}]
)
