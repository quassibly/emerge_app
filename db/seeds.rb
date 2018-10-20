# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Contributor.destroy_all
Photographer.destroy_all
# User.destroy_all


# User.create(email: "meredith.avery@gmail.com", password: "password")

Contributor.create(name: "Tarn Rodgers Johns", photo: "https://pbs.twimg.com/profile_images/1049324815872675842/XYIAYcaO_400x400.jpg", bio: "Journalist and copywriter. Published @FTlifearts @Vice @Broadly @Independent. Currently working on a project @CoCreationLoft Berlin.", twitter: "https://twitter.com/TarnRJ", instagram: "https://www.instagram.com/tarnrj/", website: "tarnrodgersjohns.contently.com")
Contributor.create(name: "Meredith Avery", photo: "https://pbs.twimg.com/profile_images/1051476685567213569/ve1gg6pJ_400x400.jpg", bio: "n00bie Berliner, wannabe developer, forever nerd.", twitter: "https://twitter.com/MeredithKAvery", instagram: "https://www.instagram.com/quassibly/", website: "https://github.com/quassibly/")
Contributor.create(name: "Jana Németh", photo: "https://pbs.twimg.com/profile_images/1049324815872675842/XYIAYcaO_400x400.jpg", bio: "Journalist and copywriter. Published @FTlifearts @Vice @Broadly @Independent. Currently working on a project @CoCreationLoft Berlin.", twitter: "https://twitter.com/TarnRJ", instagram: "https://www.instagram.com/tarnrj/", website: "tarnrodgersjohns.contently.com")
Contributor.create(name: "Vanessa Oberin", photo: "https://pbs.twimg.com/profile_images/1049324815872675842/XYIAYcaO_400x400.jpg", bio: "Journalist and copywriter. Published @FTlifearts @Vice @Broadly @Independent. Currently working on a project @CoCreationLoft Berlin.", twitter: "https://twitter.com/TarnRJ", instagram: "https://www.instagram.com/tarnrj/", website: "tarnrodgersjohns.contently.com")
Contributor.create(name: "Seda Yildiz", photo: "https://pbs.twimg.com/profile_images/1049324815872675842/XYIAYcaO_400x400.jpg", bio: "Journalist and copywriter. Published @FTlifearts @Vice @Broadly @Independent. Currently working on a project @CoCreationLoft Berlin.", twitter: "https://twitter.com/TarnRJ", instagram: "https://www.instagram.com/tarnrj/", website: "tarnrodgersjohns.contently.com")
Contributor.create(name: "Andie Cusick", photo: "https://pbs.twimg.com/profile_images/1049324815872675842/XYIAYcaO_400x400.jpg", bio: "Journalist and copywriter. Published @FTlifearts @Vice @Broadly @Independent. Currently working on a project @CoCreationLoft Berlin.", twitter: "https://twitter.com/TarnRJ", instagram: "https://www.instagram.com/tarnrj/", website: "tarnrodgersjohns.contently.com")

puts "#{Contributor.count} contributors have been seeded"

Photographer.create(contributor_id: 1)
Photographer.create(contributor_id: 2)
Photographer.create(contributor_id: 3)
Photographer.create(contributor_id: 4)
Photographer.create(contributor_id: 5)
Photographer.create(contributor_id: 6)

puts "#{Photographer.count} photographers have been seeded"

Article.create(category: "profile",
  person: "",
  headline: "Link List #89: Tech billionaires",
  subhead: "A creative digest of the web's offerings",
  tag: "Society",
  contributor_id: 2,
  photographer_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/link-list-89-tech-billionaires-creeping-on-strangers-and-why-the-80s-are-the-gift-that-keeps-on-giving/89_LinkList-header-1600x1068.jpg",
  body: '
    <p>This week, we revel in Schadenfreude as Hedi Slimane’s debut collection for Celine is universally panned, learn what the founder of WhatsApp has to say about the most powerful company in the world (#deletefacebook), and get to the bottom of Kanye West’s bizarre rant on the topic of the 13th Amendment.</p>
    <p>Not into travel guide books? <a href="https://www.theguardian.com/cities/2018/sep/21/i-follow-a-different-person-every-day-using-strangers-to-explore-the-city">This article in <strong>The Guardian</strong></a> outlines a novel way of getting to know a new city. The rules are simple: pick a stranger and don’t let them out of your sight. Here at FvF we can’t decide whether “following”—a modern day version of the 19th Century flâneur—is genius or creepy, but let&#8217;s just say that our attention is piqued.</p>
    <p>Meet Brian Acton: the tech billionaire who’s happy to put his money where his mouth is when it comes to taking a moral stand. Talking publicly for the first time since he left Facebook, the WhatsApp co-founder <a href="https://www.forbes.com/sites/parmyolson/2018/09/26/exclusive-whatsapp-cofounder-brian-acton-gives-the-inside-story-on-deletefacebook-and-why-he-left-850-million-behind/">explains to <strong>Forbes Magazine</strong> </a>why he was so disappointed in the direction of the company that he quit one year before his stock grants vested—losing him a cool $850 Million in the process.</p>
    <p>It’s not easy being the incoming creative director at a much-loved fashion house, but few collections have taken quite so much heat as Hedi Slimane’s debut for Celine. Launching on the same day as the Brett Kavanaugh hearing, it was widely criticised for being insensitive given the current political climate and ignoring the needs of women. Writer such as Tim Blanks called the collection “a gust of toxic masculinity” and one enterprising Instagrammer made their views clear by setting up the account @oldceline, which showcases images from when Phoebe Philo was at the helm. In what must be the definition of Schadenfreude, <strong>Fashionista</strong> <a href="https://fashionista.com/2018/10/hedi-slimane-celine-debut-bad-reviews">have gathered together</a> all the most scathing reviews in one convenient article.</p>
    <p>If you’re still trying to work out why Kanye West recently called for the 13th Amendment—which forbid slavery—to be abolished, <a href="https://www.washingtonpost.com/news/morning-mix/wp/2018/10/01/kanye-wests-baffling-13th-amendment-twitter-outburst-maybe-not-so-baffling-after-all/?noredirect=on&#038;utm_term=.5beac0130c1b">this <strong>Washington Post </strong>piece</a> is a good place to start. It traces how a “sleight of hand” in the amendment’s wording has lead to the practice of prisoners in American jails being forced to work for next-to-nothing in “contemptible” conditions. According to the article, Kanye’s rant makes more sense than first thought: slavery can’t fully end until this practice, which disproportionately affects African Americans, is put to an end.</p>
    <p>Whether you’re more of a Madonna fan or just can’t resist a bit of Brian Eno, <strong>Pitchfork</strong> has you covered. <a href="https://pitchfork.com/features/lists-and-guides/the-200-best-albums-of-the-1980s/">They’ve made a list</a> of 200 of the best albums from the ’80s covering pop, ambient, rap, and every genre in between—meaning that there really is something for everyone. With hundreds of hours of music to go through, it should keep us going all winter long.</p>
    <p><em>Hopefully you enjoyed the reads from this week’s Link List, but if you’ve still got an internet itch to scratch, you can find more <a href="http://www.freundevonfreunden.com/tag/link-list/">here</a>.</em></p>
    <p>Also, be sure to check out the FvF Mixtapes for some tunes mixed by our friends and favorite artists, and subscribe to our <a href="https://freundevonfreunden.us1.list-manage.com/subscribe?u=2fc2888916822c4e0131388d9&amp;id=d1c4084573">newsletter</a> to stay up to date with FvF stories.</p>')
Article.create(category: "profile",
  person: "",
  headline: "Assemble’s Joe Halligan wants to change future cities",
  subhead: "The young architecture collective works horizontally and democratically, and it has a similar vision for our cities, London",
  tag: "Business",
  contributor_id: 1,
  photographer_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0651-1600x1067.jpg",
  body: '
    <div id="story-content" class="story-main npc">
      <section class="story-chapter">
        <p>Perhaps because it used to be a school, the Assemble office has a jovial, almost improvised feel to it. The space matches the radically democratic approach of this collective working across architecture, art, and design.</p>
      </section>
      <section class="story-chapter">
        <p>As soon as Joe Halligan opens the door to the studio, two of his colleagues head into the communal kitchen and put a coffee pot on the hob: necessary fuel for the working practice of the young firm and their multidisciplinary projects. This space, in Bermondsey, is their second-ever office, after they had set up shop and re-designed their inaugural one in Stratford, and then left when the lease expired.</p>
        <p>It was intentional: they take up five-year leases, give new uses to the space, and then move on. As a result, Assemble is not your usual sleek, pared back, all-white architecture office. The bathrooms still look like school bathrooms, and the former swimming pool has been turned into a skeleton structure made with columns, beams, and no walls, which they rent out to other makers who can customize the space. “It’s up to the tenants to decide how much they want to do, and for how many years,” Halligan says. “This way we keep rents as low as possible.” There is also a high-ceiling workshop where they have made tiles, furniture and a mock-up of the facade of their Goldsmiths CCA project—where Halligan’s colleagues walk around in personalized overalls, with “Assemble” written on one side of the chest and their names on the other.</p>
        <p><em>Joe Halligan will be part of <a href="https://www.freundevonfreunden.com/thesoonernow-berlin-2018-friendsspace">The Sooner Now Berlin</a> on October 13, where he will discuss his vision for more democratic future cities where public engagement is key. Learn more about the event series that is part of our ongoing collaboration with MINI at the end of this article.</em></p>
      </section>
      <section class="story-chapter">
        <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0744-1600x1067.jpg"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0744-1600x1067.jpg"
              width="1600"
              height="1067"
              alt="Freunde-von-Freunden-TSN-Joseph-Halligan-0744">
        </figure>
      </section><section class="story-chapter">
    <div class="l-inner portrait-align">
    <div class="portrait-wrap story-unit">
      <div class="portrait-lt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0721-800x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0721-800x1200.jpg"
                 alt=""
                 width="600"
                 height="900">
                      </figure>
              </div>
      <div class="portrait-rt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0719-800x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0719-800x1200.jpg"
                 alt=""
                 width="600"
                 height="900">
                      </figure>
              </div>
    </div>
  </div>
</section><section class="story-chapter">

  <div class="l-inner">
    <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/the-sooner-now-berlin-assemble-joe-halligan/Freunde-von-Freunden-Joseph-Halligan-0668.jpg"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/the-sooner-now-berlin-assemble-joe-halligan/Freunde-von-Freunden-Joseph-Halligan-0668.jpg"
              width="1500"
              height="1000"
              alt="Freunde-von-Freunden-Joseph-Halligan-0668">
                  </figure>
  </div>
</section><section class="story-chapter">
    <div class="l-inner portrait-align">
    <div class="portrait-wrap story-unit">
      <div class="portrait-lt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0690-cropped-801x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0690-cropped-801x1200.jpg"
                 alt=""
                 width="601"
                 height="900">
                      </figure>
              </div>
      <div class="portrait-rt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0714-800x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0714-800x1200.jpg"
                 alt=""
                 width="600"
                 height="900">
                      </figure>
              </div>
    </div>
  </div>
</section><section class="story-chapter">

  <div class="l-inner">
    <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0696-1600x1067.jpg"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0696-1600x1067.jpg"
              width="1600"
              height="1067"
              alt="Freunde-von-Freunden-TSN-Joseph-Halligan-0696">
        <figcaption>A zinc passivated steel chair designed by Assemble for the cafe of the Goldsmiths Centre for Contemporary Art.</figcaption>          </figure>
  </div>
</section><section class="story-chapter">
  <div class="l-inner">
    <div class="grid">
      <div class="story-copy grid-unit quote-unit">
        <h4 class="quote"><p>“We wanted to get our hands dirty, engage with the city and work out how you build stuff.”</p>
</h4>
              </div>
    </div>
  </div>
</section><section class="story-chapter">
    <div class="l-inner">
    <div class="grid">
      <div class="story-copy grid-unit">
        <div class="story-unit module"><p>The collective started without quite knowing it was starting. In 2010, a group of 18 friends—mostly architecture classmates from Cambridge—decided to join forces and work, in the evenings and weekends, on a self-built temporary cinema in a disused petrol station in Clerkenwell. “We wanted to investigate making stuff again, and we were kind of bored sitting in architecture offices, we wanted to get our hands dirty, engage with the city and work out how you build stuff.” Since the Cineroleum, they have amassed an impressively diverse body of work, from Brutalist playgrounds to traveling exhibitions via affordable housing.</p>
<p>The calculatedly disheveled atmosphere of their office isn’t just a front. Assemble’s horizontal, co-operative approach to working, as well as their blending of architecture, design, and art, has got them much attention, not just because it’s different to traditional architecture practices, but because it works: the group won the Turner Prize in 2015—making them the first architects, and the first collective, not to mention the youngest to ever win it.</p>
<p>The most bureaucratic part of their structure used to be the careful lunch rota on the wall—the more you eat in the office, the more you have to cook. There are still no bosses and everyone can veto (for each potential new project “there is a temperature reading in our thursday meetings”) but, post-award, the firm has become a bit more structured, as they have a rolling management group in which five members run things from incoming work to HR, rotating these tasks every three months.</p>
</div>
      </div>
    </div>
  </div>
</section>
<section class="story-chapter fs-image-chapter bay-chapter bay-stick">

      <div class="img bay" style="background-image: url(https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan-workplace/Freunde-von-Freunden-TSN-Joseph-Halligan-0532-1600x1067.jpg);"></div>
    <div class="l-wide cf">
      <div class="bay-content bay-overlay flush-l">
        <p>“Lots of people think that Assemble is the project: figuring out how 15 people can work together without hierarchy.”</p>
      </div>
    </div>


  </section>
<section class="story-chapter">
    <div class="l-inner portrait-align">
    <div class="portrait-wrap story-unit">
      <div class="portrait-lt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan-workplace/Freunde-von-Freunden-TSN-Joseph-Halligan-0456-800x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan-workplace/Freunde-von-Freunden-TSN-Joseph-Halligan-0456-800x1200.jpg"
                 alt=""
                 width="600"
                 height="900">
                      </figure>
              </div>
      <div class="portrait-rt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0479-800x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0479-800x1200.jpg"
                 alt=""
                 width="600"
                 height="900">
                      </figure>
              </div>
    </div>
  </div>
</section><section class="story-chapter">

  <div class="l-inner">
    <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0545-1600x1067.jpg"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0545-1600x1067.jpg"
              width="1600"
              height="1067"
              alt="Freunde-von-Freunden-TSN-Joseph-Halligan-0545">
                  </figure>
  </div>
</section><section class="story-chapter">

  <div class="l-inner">
    <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0504-1600x1067.jpg"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0504-1600x1067.jpg"
              width="1600"
              height="1067"
              alt="Freunde-von-Freunden-TSN-Joseph-Halligan-0504">
                  </figure>
  </div>
</section><section class="story-chapter">
  <div class="l-inner">
    <div class="grid">
      <div class="story-copy grid-unit quote-unit">
        <h4 class="quote"><p>“Diverse, rich, and complex cities are the best types of cities.”</p>
</h4>
              </div>
    </div>
  </div>
</section><section class="story-chapter">
    <div class="l-inner">
    <div class="grid">
      <div class="story-copy grid-unit">
        <div class="story-unit module"><p>The project for which they won the Turner Prize was the ongoing Granby Four Streets, a community-led project to rebuild Granby, a Liverpool neighborhood that was nearly made derelict by decades of poorly-planned regeneration initiatives. Only four streets were left, and their remaining residents, fed up of living among precarious buildings, got organized and saved the houses from demolition. After a spectacular self-made effort of clearing, painting, and planting they then enlisted Assemble to help refurbish ten of them and carefully plan the whole neighborhood preserving its cultural heritage. They also set up a workshop in which they work with residents to handmake products like bathroom tiles or door handles—first for the houses and later commissioned and distributed worldwide.</p>
<p>Granby Four Streets speaks for their vision of architecture as a tool for social change. Though lots of people think, says Halligan, that “Assemble is the project: figuring out how 15 people can work together without hierarchy.” So far, so good, he says, though “the horizontal structure makes the whole thing harder for other people to understand what exactly Assemble is.” It has as many purposes as it does members, but for Halligan, the most interesting angle is the focus on making: “whether that’s buildings, documents or furniture and engaging with the city through it.”</p>
</div>
      </div>
    </div>
  </div>
</section><section class="story-chapter">

  <div class="l-inner">
    <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0607-1600x1067.jpg"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0607-1600x1067.jpg"
              width="1600"
              height="1067"
              alt="Freunde-von-Freunden-TSN-Joseph-Halligan-0607">
                  </figure>
  </div>
</section><section class="story-chapter">
    <div class="l-inner portrait-align">
    <div class="portrait-wrap story-unit">
      <div class="portrait-lt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0436-800x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0436-800x1200.jpg"
                 alt=""
                 width="600"
                 height="900">
                      </figure>
              </div>
      <div class="portrait-rt img">
                  <figure>
            <img class="lazyload"
                 data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0612-800x1200.jpg"
                 data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0612-800x1200.jpg"
                 alt=""
                 width="600"
                 height="900">
                      </figure>
              </div>
    </div>
  </div>
</section><section class="story-chapter">

  <div class="l-inner">
    <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0621-1600x1067.jpg"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-TSN-Joseph-Halligan-0621-1600x1067.jpg"
              width="1600"
              height="1067"
              alt="Freunde-von-Freunden-TSN-Joseph-Halligan-0621">
                  </figure>
  </div>
</section><section class="story-chapter">
    <div class="l-inner">
    <div class="grid">
      <div class="story-copy grid-unit">
        <div class="story-unit module"><p>With more than half of the human population now living in cities and yet more wanting to move to them, Halligan sees mass development and expansion as the biggest urban challenge for the future. “When you have this speed of development to accommodate [everyone wanting to live in cities], it seems extremely difficult to understand how we can create the types of city which I think are really good, which are cities that have a complexity, layers of history, some kind of uniqueness and people who’ve lived there for a long time,” he explains. With property becoming a commodity like it has in London, he adds, cities are becoming “much more elitist: there’s only one type person who can afford to live there, which means cities are not as good.” It is difficult for architects to stop this: given property is a financial tool, developers have no interest in making good or durable buildings, but instead on building as quickly as possible to sell as quickly as possible.</p>
<p>His hope is that people will engage more with their environment: “architects and the public have to become the developers,” he says, noting the Liverpool project. “Granby is going to be a much better neighborhood to live in than any of the developments that you see in London. But it could only happen there because those houses cost £1.” This symbolic monetary gesture ensured buyers for the neglected neighborhood in order to regenerate—in London neighborhoods are unlikely to be left derelict as they’re simply too valuable to developers.</p>
<p>Still, there is hope, which is what his The Sooner Now keynote speech in Berlin will focus on. Halligan talks about the inspiration he gets from Adams Sutherland at the organization Grizedale Arts, and how change starts at the local level: “it starts with you making your cereal bowl, then making your front garden, to then making the houses on your street, to then making the government which rules the place in which you live,” he explains. “Making really can become a quite political act, and maybe that will produce better cities and more engagement.”</p>
</div>
      </div>
    </div>
  </div>
</section><section class="story-chapter">
  <div class="l-inner">
    <h3 class="center_head circ-headline">Projects from Assemble</h3>
      </div>
</section><section class="story-chapter">
    <div id="detail-shots-2307" class="story-unit npc blk-controls slideshow-chapter">

    <div class="slider">
              <div class="neverThinglink">
                      <figure>
              <img src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-JoeHalligan-Brutalist-Playground-1600x1066.jpg" alt="The Brutalist Playground, 2015: Assemble worked in collaboration with artist Simon Terrill to design an immersive installation that recreated a trio of post-war play structures out of foam." />
              <figcaption class="overlay fly-bottomright">
                The Brutalist Playground, 2015: Assemble worked in collaboration with artist Simon Terrill to design an immersive installation that recreated a trio of post-war play structures out of foam.              </figcaption>
            </figure>
                  </div>
              <div class="neverThinglink">
                      <figure>
              <img src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-Joe-Halligan-Yardhouse-1600x1067.jpg" alt="Yardhouse, 2012–14: Yardhouse was an affordable workspace building in Sugarhouse Yard in Stratford. The pilot for the provision of new creative workspaces in the Olympic Park was funded by the London Legacy Development Corporation." />
              <figcaption class="overlay fly-bottomright">
                Yardhouse, 2012–14: Yardhouse was an affordable workspace building in Sugarhouse Yard in Stratford. The pilot for the provision of new creative workspaces in the Olympic Park was funded by the London Legacy Development Corporation.              </figcaption>
            </figure>
                  </div>
              <div class="neverThinglink">
                      <figure>
              <img src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-Joe-Halligan-The-Turner-Prize-800x1200.jpg" alt="Turner Prize Exhibition, 2015: Assemble\'s contribution was a showroom to present Granby Workshop to a wider public." />
              <figcaption class="overlay fly-bottomright">
                Turner Prize Exhibition, 2015: Assemble\'s contribution was a showroom to present Granby Workshop to a wider public.              </figcaption>
            </figure>
                  </div>
              <div class="neverThinglink">
                      <figure>
              <img src="https://www.freundevonfreunden.com/wp-content/uploads/creating-the-more-democratic-cities-of-the-future-one-street-at-a-time-with-assembles-joe-halligan/Freunde-von-Freunden-Joe-Halligan-Granby-Four-Street-800x1200.jpg" alt="Granby Four Streets, 2013: The ongoing community-led project breathes new life into Granby Street, a once a lively high street at the center of Liverpool’s most racially and ethnically diverse community. The demolition of all but four Victorian terraces during decades of regeneration initiatives saw a once thriving community scattered." />
              <figcaption class="overlay fly-bottomright">
                Granby Four Streets, 2013: The ongoing community-led project breathes new life into Granby Street, a once a lively high street at the center of Liverpool’s most racially and ethnically diverse community. The demolition of all but four Victorian terraces during decades of regeneration initiatives saw a once thriving community scattered.              </figcaption>
            </figure>
                  </div>

    </div>

  </div>
</section>
<section class="story-chapter">
    <div class="l-inner">
    <div class="grid">
      <div class="story-copy grid-unit">
        <div class="story-unit module"><p><em><a href="https://assemblestudio.co.uk" target="_blank">Assemble</a> is a multi-disciplinary collective working across architecture, design, and art that champions an interdependent and collaborative working practice seeking to actively involve the public as both participant and collaborator in the on-going realization of the work. Their projects include <a href="https://assemblestudio.co.uk/projects/granby-four-streets-2" target="_blank">Granby Four Streets</a> and the <a href="https://assemblestudio.co.uk/projects/goldsmiths-centre-for-contemporary-art-2" target="_blank">Goldsmith Centre for Contemporary Art</a>, among many others. </em></p>
<p><em>Joe Halligan will speak at <a href="https://www.freundevonfreunden.com/thesoonernow-berlin-2018-friendsspace" target="_blank">The Sooner Now Berlin </a>about hidden opportunities in urban environments and how the public can actively engage in their future.</em></p>
<p><em>The Sooner Now is a joint initiative by FvF and <a href="https://www.mini.de/de_DE/home/explore/mini-kooperationen/freunde-von-freunden.html" target="_blank">MINI</a> fostering collective imaginations of urban futures. This year, the long-standing collaboration is supported by urban design magazine <a href="https://www.instagram.com/ideatgermany/?hl=en" target="_blank">IDEAT</a>. After two years of forward-thinking conversations, the event series returns to Berlin on <a href="https://www.freundevonfreunden.com/thesoonernow-berlin-2018-friendsspace">October 13</a> to examine urban utopias then and now. Together with an eclectic cast of innovators—architects, designers, technologists, journalists, policy makers—we share inspiring ideas in a day-long program of dialogue, experiment, and play.</em></p>
<p>Text: <a href="http://www.freundevonfreunden.com/tag/marta-bausells">Marta Bausells</a><br />
Photography: <a href="http://www.freundevonfreunden.com/tag/liz-seabrook">Liz Seabrook </a>, <a href="https://assemblestudio.co.uk" target="_blank">Assemble</a></p>
</div>
      </div>
    </div>
  </div>
</section><section class="story-chapter">

  <div class="l-inner">
    <figure class="img img-medium">
              <img  class="lazyload"
              data-src="https://www.freundevonfreunden.com/wp-content/uploads/berlin-2018-friends-space/180911-TSN-FB-Banner-Berlin_S-1600x900.png"
              data-lrg="https://www.freundevonfreunden.com/wp-content/uploads/berlin-2018-friends-space/180911-TSN-FB-Banner-Berlin_S-1600x900.png"
              width="1600"
              height="900"
              alt="180911-TSN-FB-Banner-Berlin_S">
                  </figure>
  </div>
</section>  </div>

    <div id="story-content" class="story-main npc">
  <section class="story-chapter related-stories-section">
    <div class="l-inner">
      <h3 class="center_head circ-headline">Related Stories</h3>
      <div class="grid">
        <div class="story-copy grid-unit">
          <ul class="content_links">
                            <li class="grid_item neverThinglink">
                  <span class="img_cntr image-link">
                    <a href="https://www.freundevonfreunden.com/interviews/azeema-magazine-steps-up-for-women-of-color-translating-personal-heritages-into-stories-with-daring-powerful-voices/">
                      <img width="220" height="147" src="https://www.freundevonfreunden.com/wp-content/uploads/azeema-magazine-steps-up-for-women-of-color-translating-personal-heritages-into-stories-with-daring-powerful-voices/Freunde-von-Freunden-Azeema-43-220x147.jpg" class="attachment-story-thumbnail-image-tsize size-story-thumbnail-image-tsize" alt="Freunde-von-Freunden-Azeema-43" title="Azeema Magazine steps up for women of color, translating personal heritages into stories with daring, powerful voices" />                    </a>
                  </span>
                  <p class="locale">
                    <a href="https://www.freundevonfreunden.com/city/london/" title="View all posts in London, UK"><strong>London</strong>,  UK</a>                 </p>
                  <p class="title"><a href="https://www.freundevonfreunden.com/interviews/azeema-magazine-steps-up-for-women-of-color-translating-personal-heritages-into-stories-with-daring-powerful-voices/">Azeema Magazine steps up for women of color, translating personal heritages into stories with daring, powerful voices</a></p>
                </li>
                            <li class="grid_item neverThinglink">
                  <span class="img_cntr image-link">
                    <a href="https://www.freundevonfreunden.com/interviews/shifting-the-me-culture-in-favor-of-a-shared-eco-responsibility-with-interior-architect-sevil-peach/">
                      <img width="220" height="147" src="https://www.freundevonfreunden.com/wp-content/uploads/sevil-peach/Freunde-von-Freunden-Sevil-Peach-3956-220x147.jpg" class="attachment-story-thumbnail-image-tsize size-story-thumbnail-image-tsize" alt="Freunde-von-Freunden-Sevil-Peach-3956" title="Shifting the ‘me’ culture in favor of a shared eco-responsibility with interior architect Sevil Peach" />                    </a>
                  </span>
                  <p class="locale">
                    <a href="https://www.freundevonfreunden.com/city/london/" title="View all posts in London, UK"><strong>London</strong>,  UK</a>                 </p>
                  <p class="title"><a href="https://www.freundevonfreunden.com/interviews/shifting-the-me-culture-in-favor-of-a-shared-eco-responsibility-with-interior-architect-sevil-peach/">Shifting the ‘me’ culture in favor of a shared eco-responsibility with interior architect Sevil Peach</a></p>
                </li>
                            <li class="grid_item neverThinglink">
                  <span class="img_cntr image-link">
                    <a href="https://www.freundevonfreunden.com/interviews/katie-scott-turns-science-into-fantasy-with-her-modern-take-on-anatomical-illustration/">
                      <img width="220" height="147" src="https://www.freundevonfreunden.com/wp-content/uploads/katie-scott-turns-science-into-fantasy-with-her-modern-take-on-anatomical-illustration/Freunde-von-Freunden-Katie-Scott-3725-220x147.jpg" class="attachment-story-thumbnail-image-tsize size-story-thumbnail-image-tsize" alt="Freunde-von-Freunden-Katie-Scott-3725" title="Katie Scott turns science into fantasy with her modern take on anatomical illustration" />                    </a>
                  </span>
                  <p class="locale">
                    <a href="https://www.freundevonfreunden.com/city/london/" title="View all posts in London, UK"><strong>London</strong>,  UK</a>                 </p>
                  <p class="title"><a href="https://www.freundevonfreunden.com/interviews/katie-scott-turns-science-into-fantasy-with-her-modern-take-on-anatomical-illustration/">Katie Scott turns science into fantasy with her modern take on anatomical illustration</a></p>
                </li>
                      </ul>
        </div>
      </div>
    </div>
  </section>
  </div>

</article>')
Article.create(category: "profile",
  person: "",
  headline: "Uncovering the forgotten female artists of Kazakhstan with an exhibition spotlighting four generations",
  subhead: "Bread & Roses mixes contemporary, modern, and folk art practices for the first time, Berlin",
  tag: "Art",
  contributor_id: 2,
  photographer_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/auto-draft/Freunde-von-Freunden-Focus-on-Kazakhstan-4835-1600x1067.jpg",
  body: "“In our research we’ve uncovered a number of women artists who are extremely important to the development of Kazakh art who were invisible: They made work under their husband’s names, their art wasn’t preserved or sold and once their husbands passed away that was it,” says Dr. Rachel Rits-Volloch.
  As the founding director of MOMENTUM, a not-for-profit platform dedicated to time-based art, Rits-Volloch is part of the effort to shift this narrative. In collaboration with the Ministry of Culture and Sports of the Republic of Kazakhstan and the National Museum of the Republic of Kazakhstan, Momentum is organizing the exhibition Bread &#038; Roses, which will showcase four generations of female Kazakh art at Berlin’s Kunstquartier Bethanien. Bread &#038; Roses has been made possible through the cultural initiative Focus Kazakhstan, a four-pronged exhibition format aiming to bring contemporary art from Kazakhstan to an international audience. Incredibly, it’s the first time that the government has ever sponsored a contemporary art project.
  The interest in contemporary art has been steadily growing in Kazakhstan since the country was declared a republic in 1991, but for many years forward-thinking artists were largely ignored. This is something that the artist Almagul Menlibayeva knows only too well: “We were in the margins, working underground without support from the government,” she explains. As co-curator of Bread &#038; Roses—alongside Rits-Volloch and David Elliot—Menlibayeva doesn’t just want to find a place for those artists who were forgotten but has her eyes set firmly on the future: “The question now is what are we going to do for the next generation of artists?” she says.
  “We were in the margins, working underground without support from the government.”
  In an attempt to address this concern, the project in Berlin also includes a residency, which will see a total of seven young Kazakh artists visiting the German capital for a period of two months. At the moment, Anar Aubakir, Aigerim Ospanova, Saule Suleimenova, and Gulmaral Tatibayeva are in residence at Momentum, and they are already noticing differences between how art is seen in the two countries. As Rits-Volloch explains, in Kazakhstan, art students are well trained in traditional techniques; as a result, an important part of the residency is to “encourage them to go outside their normal areas of interest”. This goes beyond learning new skills, though. Early on, the group was taken to meet a collective of female refugees living in Berlin—an experience that inspired new works for a couple of the artists. Gulmaral Tatibayeva, for instance, will update a project she started in Kazakhstan by recreating a yurt made from the clothing of Kazakh women with clothing from female migrants who have settled in Germany. “I’m interested in strong women using their power to integrate here,” she says.
  It’s hardly surprising that the diversity of Berlin has resonated with these artists: located in Central Asia, Kazakhstan is a melting pot of cultures and ethnicities. There is, however, a dark history behind the heterogeneousness of the Kazakh people: the country was the destination point for many people forcibly relocated from other countries within the Soviet Union. Forced relocation was a technique used by the Soviets to discourage national identity and another aim of Bread &#038; Roses is to bring this history to light. “Amazing ideas came out of this tragedy,” says Rits-Volloch. “The artists in the exhibition are the children of, the friends of, and the students of, people who came to Kazakhstan in this way.”
  This was just one of the many injustices that the Kazakh people faced at the hands of the Soviet Union. “What the Soviets did was a policy of eradicating local culture and language,” says Rits-Volloch. “The first thing they did was ban the local language in schools; everyone had to speak Russian.” The occupation radically changed the landscape of Kazakhstan: the tradition of pastoral nomadism—Kazakhs lived in yurts and moved according to the seasons—was almost eradicated and religious practices, such as Shamanism, couldn’t be observed under Soviet rule. Many of the artists involved in Bread &#038; Roses are part of a generation who are looking into these almost-forgotten traditions. “The Soviet Union came and cut the history… they said, ‘Before was nothing and now is happiness,’” explains Menlibayeva, who as well as co-curating will present her own work in the exhibition. But while her photographs and videos might focus on this “fragmentary” history, she still acknowledges the results of her Soviet upbringing and education: “It’s impossible to reject something 100%,” she says. “I’m part of the Soviet project in a way.”
  Within the exhibition, these contemporary issues are presented alongside both modern and folk art traditions, in what Rits-Volloch calls “A new paradigm for Kazakhstan.” It’s a unique chance to trace the influence of these “great-grandmothers” of Kazakh art on the younger generations, as well as remember the incredible strength of those who suffered considerably under the regime. Bread &#038; Roses celebrates women like Vera Ermolaeva, for instance, who was sent to the Gulag and eventually shot after her illustrations were declared ‘Anti-Soviet’ in 1934.
  Although female artists no longer have to fear such extreme punishment for making art, arguably they still have a way to go to catch up to their male contemporaries. “It’s still a very patriarchal society. It’s very hierarchical, to a surprising degree,” says Rits-Volloch. “Men don’t do the washing-up! It’s unheard of,” she adds. The exhibition’s third curator, David Elliot, who has a long history of working in the region, remains optimistic about gender politics in Kazakhstan: “It&#8217;s not alone in being rather patriarchal,” he says, “and remember the origin of the Amazons—who were real!—are found in Iron Age Kazakhstan.”")
Article.create(category: "profile",
  person: "",
  headline: "Slovakia, crafting plastics!",
  subhead: "In cooperation with local scientists, designers Vlasta Kubušová and Miroslav Král have developed a material of the future, Bratislava",
  tag: "Environment",
  contributor_id: 3,
  photographer_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/crafting-plastic-studio/Freunde-von-Freunden-TSN-Crafting-Plastic-Studio-18-1600x1068.jpg",
  body: "When crafting plastics! studio co-founder Vlasta Kubušová first heard of a fully biodegradable material with plastic-like attributes that was invented in her hometown, she was fascinated and couldn’t understand why we were not already using it.
  Together with her partner and fellow product designer Miroslav Král, they asked the scientist responsible, Pavel Alexy. Alexy and his team had just registered a related patent and his answer was simple: Join our laboratory and we will invent something together.
  Five years later, following numerous experiments with Alexy and his team at the Slovak University of Technology, the interdisciplinary studio launched an eyewear collection made of bioplastic. “People have to touch it, otherwise they can’t believe it actually exists. We didn’t either,” says Kubušová, laughing. Unlike plastic, the eyewear material is oil-free, carbon neutral, biodegradable, and strong and stable when it needs to be. Consequently, the glasses live up to consumer demands in terms of ergonomics, functionality, durability, and aesthetics. Crafting plastics! studio deny any notion of an off-putting dirt-colored product—in fact, the timeless designs undoubtedly respond to contemporary styles.
  <em>At The Sooner Now Düsseldorf Vlasta Kubušová will be discussing the use of innovative materials in the fashion industry. More about the joint initiative of MINI and FvF at the end of this piece.</em>
  “Glasses are objects through which a person looks at the world, but they also influence their image,” says Kubušová. “They are different from packaging or a straw—you pick them much more deliberately.” When the heat-resistant products (the material withstands temperatures of up to 110 degrees celsius) are no longer in use and discarded into compost, they decompose entirely in 90 days—causing no environmental harm. Oil-based plastics, of which the world has produced over nine billion tons since the 1950’s, live up to 1,000 years, polluting both oceans and land.
  Since Kubušová completed an MA in Transfect Design Systems at Berlin’s University of the Arts with a focus on interdisciplinary work in 2015, the duo’s innovative research is ongoing. They have only recently introduced their latest brainchild called Nuatan, an equally compostable material made of corn and other renewable natural resources, which they are eager to translate into a global brand. “We have reached the point at which plastic must at least be partially replaced by bioplastic. There must be an accessible place where bioplastic can be discarded and degraded for the cycle to be completed. We’re not there yet but that’s what we perceive as our mission,” says Kubušová.
  “As designers, we might expect someone to make a material, then use it to create something. We do it the other way around by working on our own product line, and have become researchers ourselves,” adds Král. “We are developing the material ourselves because we find it meaningful, and we also use it as designers.” The goal is to demonstrate that bioplastic can be used for the mass production of packaging. “It can potentially substitute significantly more plastic products than we originally thought. To this day, bioplastic has developed so much it can be pressed into tablets, used as 3D printer refill, and can be even injected, which is the most commonly used industrial technology in the processing of plastic. Anything can be manufactured from it if we invest in further research,” says Král.
  Besides research, Kubušová and Král are keen to promote and raise awareness that this technology is available. “Large companies have long known they can use something more ecological, but they have no reason to transform until there is sufficient demand. That’s why we are raising awareness at different levels,” explains Kubušová from her studio, which is based inside the arts and culture center Nová Cvernovka, a former secondary school of chemistry. Three decades ago, this is where students were experimenting with chemical compounds. “We can’t be complacent about what we have. We are constantly trying to develop bioplastic and are testing all its attributes—resistance, hardness, flexibility—and trying out various natural dyes such as seaweed or food pigments that are also fully biodegradable,” Král says. Moreover, the team are examining other composites with the same decay time; Král names the experimentation with the combination of bioplastic and coffee waste as an example.
  In addition to eyewear, crafting plastics! studio have applied bioplastic in larger dimensions; their portfolio also includes tables and chairs. “People often think bioplastic is fragile and unstable, that it degrades quickly, but that’s a misconception,” Král says. Both ascribe this to misleading marketing, knowing that many companies advertise their products as fully biodegradable materials, yet in reality, they often consist of 80% crude oil. “At first, it looks like an ecological product, but it’s just a trick. Crude oil is degradable, mainly if you add special additives that accelerate the process. But then it’s no longer clean material and absolutely not made through use of renewable resources. It’s a compound that can’t be well composted, nor recycled.”
  Does the fashion world have a response to that? “The issue of resource sustainability is gaining attention, but I don’t feel it goes deep enough. Fashion remains fast and non-transparent. I think that this environment will need lots of time before it transforms deeply. However, it has a large impact on the new generation, which is currently deciding about its lifestyle and products to buy,” says Kubušová. She is convinced that complex problem-solving requires legislative changes at an international level, including support for companies using ecological materials and a tax increase for the production of traditional plastic. “Bans don’t bring about change on their own; an alternative must be provided. It is not enough to simply start producing recyclable straws,” she says.
  “Again, marketing is not enough. Nor are half-baked solutions and materials aimed at accelerating the process. We could do that, too. Had we added a few drops of crude oil in our bioplastic, it would have been the perfect material five years ago, but we reject such a compromise. Our scientists did not do that and neither will we, even if we are running out of possibilities, money, and strength. We want to be honest and we see that the research is meaningful. We have a bioplastic that is already good enough and we offer it for further development, without cheating,” says Král.")
Article.create(category: "profile",
  person: "",
  headline: "Andrea Lenardin and her transatlantic research into the shifting meaning of things",
  subhead: "A journey into object cultures, future memories and Viennese resilience, Los Angeles",
  tag: "Spirituality",
  contributor_id: 4,
  photographer_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/andrea-lenardin-madden/Freunde-von-Freunden-Andrea-Lenardin-85-1600x1067.jpg",
  body: "For ‘declared_’, a current collaboration with long-time collaborator Peter Noever, Lenardin retraces the history of everyday objects that have gained iconic status today, but that might not be with us tomorrow. Physical items such as a category of tableware home to a specific region or an analog medium—like paper—that become obsolete through standardization and digitalization are redesigned for the future. Their exhibition at Galerie Rauminhalt in Vienna is also a call upon the design community to shape the evolution of familiar objects by submitting an idea for their (un)expected future use. “Today, our relation to the material world is occupied by the principles of minimalism, a sharing culture, and nomadic living,” says Lenardin without any hint of nostalgia or pessimism. “I’m just really curious how the not-having-of-things will affect future generations—how all the collections not made will be memorized.”
  Thinking of her own generation and her upbringing in Austria, there are several items that Lenardin recalls to be essential in her life. One of them, the Post-it, is as mundane as it is iconic. Introduced and patented by 3M over 40 years ago, the sticky note—easily recognizable by its canary yellow color—remains a mythical object. For some, Lenardin among them, see the invention of the Post-it as the advent of a new means of communication: “It was quintessentially the first text-message, if you disregard the telegram,” she explains. “But as such, it has become obsolete with digital messaging services.” For ‘declared_’ Lenardin collaborated with 3M to produce the largest original Post-it Pad possible. Exhibition visitors can meet at the limited edition ‘Post-it bar’ and draw on an elevated pad 55 x 55 inches large, containing 840 sticky notes.
  As a thing of the past, the larger than life Post-it is now assigned a new purpose through referencing the architectural doodles known as napkin sketch or “serviettenskizze” in German. Lenardin hopes that through the encounter with the specific haptic qualities of the original, visitors will be able to make “future memories.” She explains this to be a sort of recipe for all projects she carries out with A L M: “To me, a project is successful when it connects with the client or user’s own memories and when it entices them to make new ones.” Describing her office’s underlying methodology as the “creation of open-ended systems,” Lenardin strives to reach a balance of defined and versatile elements in everything she carries out—from the restoration of a family home to the design of a dining plate. “Of course, I cannot be 100% sure about what will be of future relevance, but this is exactly why we design places and things to evolve with the people living in or with them.”
  As someone who likes to do as much as possible by herself, Lenardin brought the heavy oversized Post-it pad to Vienna in her carry-on. Even though she calls L.A., where she lives with her husband and son, home for more than 20 years, she travels back to Europe five or six times a year and even keeps her apartment in the 4th district of Vienna, where she lived during the ’90s studying at the University of Applied Arts—a school known for its transdisciplinary curriculum. Originally a member of the class of architect Wilhelm Holzbauer, Lenardin also studied under Vivienne Westwood and other lecturers at that time: “I pretty much made use of the school as it was thought to be used,” she reflects. “The applied arts are not limited to a discipline, but—similar to the Bauhaus philosophy—represents a way of life.”
    Until today, Lenardin operates with a transatlantic mindset of something she describes as “Viennese resilience” mixed with American excitement. “What I like about working in the US is the enthusiasm you experience when starting a project, which generates a boost to overcome inevitable roadblocks. This is something that definitely doesn’t exist in Austria,” she says, laughing. “In Vienna I experienced the exact opposite: in the beginning, there’s a sentiment of reluctance rather than support,” she explains. “But then, once you’ve earned their confidence, they will carry you over the finish line.” Besides bridging European and American work ethics, Lenardin also enjoys working with people outside of L.A.: “I love collaborations across time zones and I love the collision of different cultural settings,” she says. “Even the differing moods—when you’re calling someone who’s about to leave the office, but you yourself have just gotten up—it can bring a fresh perspective to something.”
    The ambition of her current practice—namely to touch upon every aspect of a project and to create overall experiences—is deeply rooted in her time at the Vienna University of Applied Arts. It was here where she experimented with various media, one of them being exhibition-making, “a typology enabling you to work on everything: the architecture, graphics, visualization, the overall concept,” Lenardin explains. For her thesis project in 1994, she relocated to Berlin to design “a museum of consumption,” inspired by Michael Thompson’s Rubbish Theory. At the center of it was her fascination with the arbitrary correlation of price and value in consumer culture. “I was asking myself what mechanisms would render a product iconic. How does commerce function? Why can certain things gain and lose value irrespective of supply and demand?” A question that is no less topical today, almost 25 years later, at the peak of brand-driven storytelling and influencer marketing.
    Much of Lenardin’s work—be it an ‘instant day’ dispenser, or an ATM for cupcakes functions as commentary on the promises of consumer culture. A 1996 installation at the Schindler House in West Hollywood conceptualized the day as a commodity consisting of ‘emotional nutrition facts’ and ready-to-consume experiences provided in vacuum-sealed pockets. “This is something I come back to again and again, this idea of an ‘instant day,’ a day that can be bought and consumed,” says Lenardin. What is condensed in the idea of Instant Days is nothing less than the ultimate promise of late capitalism, where we purchase things not for their product value, but their symbolic one: “where our everyday lives follow a recipe-like formula and happiness becomes a matter of management.”
    With Lenardin’s personal work being a close observation on how we look at goods, it is of no surprise that retail and restaurant concepts became the focus of her studio’s practice. “It all pretty much started with Sprinkles,” she reflects, “we were given a carte blanche to invent a whole world around a single product.” When Lenardin was appointed Creative Director at Sprinkles—reportedly the world&#8217;s first cupcake-only bakery—American restaurant chains relied heavily on the comforting sameness of both their menu and interior. “At Sprinkles, we looked at each location anew—creating a sense of place drawn from the individual neighborhood with the only constant being the quality of the cake and the service.” The outcome of her 10-year career with Sprinkles was in fact a whole universe; A L M Project designed everything from the architecture (tailored to each location), the displays, packaging and specific cupcake arrays, even the apparel and training of the service staff was down to A L M. “Sprinkle’s success has been analyzed over and over again, but there isn’t that one key ingredient, instead it is the synthesis of commited attention to every detail,” says Lenardin, who has seen the same people returning to buy their cupcakes at Sprinkles for the last 15 years.
    “Getting together to eat has to do with giving each other our time. And time represents the ultimate luxury today, while material status symbols do not count as much anymore.”
    After Sprinkles, the designs of A L M accompanied yet another American success story, written by the Turkish-Kurdish entrepreneur Hamdi Ulukaya and his Greek-style yogurt brand Chobani. A L M’s design for the flagship café in Soho, New York was followed by three collaborations with Michelin star chef Corey Lee in San Francisco—with In Situ, his restaurant at SFMoMA, being the most recent one. Lenardin, who is known to host popular dinner parties, believes that cooking and eating together has become the luxury of today. “Getting together to eat means giving each other our time. And time as intangible commodity in our fast-paced culture becomes the most precious gift greater in value than material status symbols. Material possessions are less desirable than experiences today, and it will be interesting to see what effects the sharing age will bring along.”
    With more and more people refusing redundant possessions, there might as well be a chance for product design to move away from the generic, back to the particular. For Lenardin, this will mean to stick with her concept of future memories, marrying the specific with an open ending. “This is where I find the biggest joy in my work, each project is like planning a new journey, then you get on the road and you allow curiosity to lead the way.”")
Article.create(category: "profile",
  person: "",
  headline: "In the age of acceleration, Deniz Ova wants to reformulate design education",
  subhead: "Unlearning as a methodology in the Fourth Istanbul Design Biennial, Instanbul",
  tag: "Education",
  contributor_id: 5,
  photographer_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/in-the-age-of-acceleration-deniz-ova-emphasizes-the-urgency-of-reformulating-design-education/Freunde-von-Freunden-Deniz-Ova-055-1600x1068.jpg",
  body: "When Deniz Ova first moved to Turkey in 2007 she wasn’t intending on settling there for good.
  Born and raised in Stuttgart—where she was working in event organization and management—Ova relocated to Istanbul after she was offered a job at the Istanbul Foundation for Culture and Arts (IKSV). “Though it was initially a short-term plan, twelve years later I’m still working for IKSV!” she says. After initially living in the heart of the city, Ova finally settled in the Bomonti district, which is well-known for its multicultural community and recent urban transformation. “Here you can still hear church bells on Sunday morning and see crowds of people gathered; it reminds me of the Noel or Easter celebrations we used to have in Germany,” she says.
  A prominent figure in promoting Turkey’s design and contemporary art scene, Ova has been the Director of Istanbul Design Biennial since 2013. Before that she led IKSV’s International Projects department where she developed festivals and events for the foundation in a wide-range of European cities. Now in its fourth edition, the theme of this year’s biennial is A School of Schools, which was developed by curator Jan Boelan and associates Nadien Botha and Vera Sacchetti. It centers on the process of unlearning. “The world is constantly changing,” says Ova. “We don’t know what the future will bring and yet we continue to educate with old methods. We need to formulate design education in relation to present-day concerns.”
  You have a background in political science and linguistics. How did you make the move to working in the arts?
  I was studying Political Science and Linguistics because I didn’t know what else to study! I was educated at a Waldorf school that emphasized creativity and hands-on learning, so I was actually introduced to the arts at an early age. My first love was the performing arts; I worked in the theater industry for a while before realizing that it wasn’t exactly what I was looking for. Tourism and event organization runs in my family, but it was only after my experience planning festival events in Stuttgart that I decided to head in this direction. But I still finished my studies in Political Science and Linguistics. The analytical thinking and diplomacy skills that I learnt while studying have come in handy over the past twelve years of my career.
  The title of the upcoming 4th Istanbul Design Biennial is A School of Schools. With your team you work on expanding the concept of the format. Could you elaborate on the importance of questioning education and learning methods today?
  The world is constantly changing and we don’t know what the future will bring. Thousands of designers are being educated at schools in order to work in the industry after graduation, but maybe in the future there’ll be no need for their skills in the industry. Maybe new professions will come up in other fields of operation that we don’t know about yet. A School of Schools questions the very idea of learning; it asks what school or education means and how design as a learning platform can contribute to society. It manifests a set of dynamic learning formats that encourage creative production, collaboration and social connection.
  When we say education we don’t only refer to education offered in academies or universities but education taking place in different settings—levels and forms that go beyond the concept of “school.” We want to learn design together with our audience. A School of Schools tries to bring together old and new knowledge, academic and amateur, professional and personal—focusing on the process as much as the outcome. I believe learning needs to be organic and adaptable. Similarly, design education should be based on attitude rather than a specific technique. It should move from an object-focused methodology to process-oriented one and encourage action. In other words, learning by doing; being able to try and fail is the key!
  The “learning by doing” attitude brings to mind alternative education models, such as Black Mountain College or Bauhaus&#8230; What can we learn from these models?
  These models were both formed in accordance with the necessities of the sociological-political agenda back then. We should appreciate that they encouraged experimentation and an understanding of art&#8217;s relationship to society and technology. Yet an important question remains unanswered: How can we build design education in relation to present-day concerns? In the biennial we want to develop an education methodology that isn’t based on specific techniques but aims to build muscles for tackling problems that may arise in a speculative future.
  Given that this year’s emphasis is on “learning as a process,” how could a biennial challenge its time-space limitations and become a place of learning?
  We want to challenge the idea that a biennial shows up in our life every two years and then disappears. We are working on building a process-oriented platform, which extends the experience and discussion over a longer period. We’ve put out an open call inviting scientists, sociologists, engineers, students or simply anybody who is interested in a year-long investigation of design to come and think together. For us the biennial is about the journey not the destination; along with finished works there will be open-ended works, which take shape throughout the biennial, keeping the exhibition space active. This is a challenge for us since we don’t know what the outcome will be, but we consider this as a form of learning.
  You previously mentioned the social aspect of design; I’d like to hear your insight on designer’s roles in transforming our cities. How could or should they take part in this process?
  They should actively take part in the transition process as this will lead to better results for the city, but the whole responsibility should not be left only to designers. We have to be aware of social dynamics; here the majority of socially engaged projects are small-scale initiatives by individuals. We need to widen the scale of local projects for them to be successful in a more impactful way and this requires great involvement and new ways of engaging with the public. We have to work on anticipating local needs or demands into possible intervention scenarios, and designers should build the necessary skills needed to meet these expectations.
  “We try to explain that design is more than a luxury object; it is an integral part of our everyday life.”
  Installation views from a School of Schools
  Do you think  Turkish citizens are ready for this intervention into their daily lives?
  It’s quite hard to compare the perception of design in Turkey with the rest of the world. Here we have two extremes: one refers to design as a luxury object, whereas the other is more concerned with the social aspect and functionality of design. The public perception of design in Turkey mostly lies in parallel with the first scenario; the social and cultural aspect is forgotten. We try to explain that good design is more than a luxury object; it is an integral part of our everyday life. Design can be a simple, functional product that is not necessarily expensive, but more rewarding in the long term. Through the biennial we try to create this consciousness and encourage better consumption patterns, and we’re aware that it’s a long term process.
  How does the biennial connect Turkey with the rest of the world? What kind of perspective could Turkish designers add to the global design scene?
  We aim to make use of the city as a dynamic space for projects, actions and interventions, which engage transdisciplinary practitioners from Turkey and abroad. It’s a great opportunity for the local design scene to build connections with international designers. Though Istanbul isn’t seen as a design city like London or Milan, there are things that we have to offer to the global scene. We’ve got a long-established tradition of crafts, for example. It’s not the case that we don’t have good design education here and we can’t educate good designers. There are lots of good designers though they may not always be in the public eye.")
Article.create(category: "profile",
  person: "",
  headline: "After a book tour, the desert calls. In conversation with iO Tillett Wright",
  subhead: "The author, speaker and now self-taught furniture maker explores the notion of home in Joshua Tree",
  tag: "Art",
  contributor_id: 6,
  photographer_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/io-draft/Freunde-von-Freunden-iO-Tillet-Wright-1202-1600x1065.jpg",
  body: "Io is the fourth largest moon in the solar system. As the innermost Galilean moon that orbits Jupiter, it’s also the most volcanically active, erupting with sulphur resulting from the moon being stretched and squeezed. Named after this energetic, seemingly angry moon is 32-year-old iO Tillett Wright.
    The native New Yorker is, like the moon he was named after, a ball of energy—energy that’s channeled into a plethora of projects at any one time. Speaking to iO, what strikes you immediately is an uncompromising and effervescent personality (shyness simply isn’t part of his vernacular), combined with a frenetic pace—something only those who grew up in New York City can truly relate to. “I’m a multi-hyphenate, for sure! Creative life is too often defined by people asking what you do: umm, well, I wrote a book and I take pictures of people and I speak to people and I, I…,” says iO, trailing off with the sheer exhausted voice of someone who’s been asked to talk about this one too many times.
      “Fuck man, at what point do we just get to be someone that’s not a trans author? I’m just an author, you know?”
      Putting himself in the spotlight to tell his story has led to an ongoing educational narrative, one that continues from the US to Europe as he tours for his memoir, Darling Days. “I think I’ve positioned myself that way because I did a TED talk and lectures at Universities around the country for the last five years,” he says. “I’ve talked so ad nauseum about myself!”
      His 2016 memoir opens with a penned letter to his mother, keen to begin this story with a clear showering of love and understanding for a mom who was both a strength and a weakness in his life. He recounts: “I was raised in a pretty traumatic situation in New York with a hoarder mom in a tiny apartment. I wasn’t allowed to close the door and we were really poor, electricity wasn’t always on and I didn’t have a bed; I slept on a fucked-up army cot that clapped up around me during the night and I wasn’t allowed to have keys until I was 17…” <em>Darling Days</em> is a self-reflection on growing up in New York City in the ’80s and ‘90s, on the parents and parental figures that form you, the stirring we all feel to examine where we came from and how our “norms” bring out varying levels of resilience, compassion, tolerance, anger—and, whether we like it or not, shape a significant part of our inner and outer selves. Putting the scarring and the sublime life events onto paper might not always make for the most enjoyable read, but with <em>Darling Days</em> there’s a poetic nature with which the words are spun like silk, akin to Patti Smith’s <em>Just Kids</em>.
        <em>“Our apartment is like a riverboat. Big windows open out onto the howling street four stories below, and sunlight floats in on the steady breeze. The shifting sky turns our house into a Pantone kaleidoscope, bathing the rooms in dramatic moods and colors, revolving with the weather and the hour. Bright blue, deep orange, burnt red, purple, and rippling swathes of gold. Sunbeams bounce off the licorice-black fire escape, slick from a rain just passed. They hover high above and then plunge into the chaotic street that grumbles and creaks under poverty’s aching, struggling ass.” </em>
        The book tour led iO to Berlin where he was invited to speak at the Volksbühne theater. “It went from being an evening with me where I talk about my shit to this thing where we give it back to the community a bit more and have these three, young, queer actors partake,” explains iO. “And I fought really hard to ensure there was a non-trans person of color involved. I didn’t want the binding thread to be that we’re trans, it’s weird,” adds iO.
        iO’s event in Berlin, like many of the speaking events he’s been involved in, revolved around the fundamental themes of his life: “Familiarity creates empathy and people overcome discrimination and stigma by getting to know the true humanity of people they aren’t familiar with—I try to create that by offering myself.” For a creative multi-hyphenate, does this ongoing dialogue ever frustrate or tire him? And at what point, if ever, does educating become someone else’s role? “I’m able to speak publicly in a way that makes a lot of people terrified, but I have no fear around stages, or uncomfortable conversations. I recognize that that is an opportunity to create conversation and to expand awareness about something that really, really needs more understanding and empathy,” explains iO. “However, I’m also still a person and a creator of things. It kills me that you can’t just be an author, you’re a female author, you’re not a musician, you’re a black musician, you’re not a whatever, you’re a gay whatever. Fuck man, at what point do we just get to be someone that’s not a trans author? I’m just an author, you know?”
        When not speaking to new audiences about <em>Darling Days</em>, iO retreats to the SoCal desert, where the autodidact is building not one but two houses. “I came out to Joshua Tree a few times and just really loved the vibe out here,” he says. “I ended up buying a six-bedroom house for a steal with a one-bedroom casita on the same property. I’ve completely reinvented what this place is and I built all the furniture myself,” he adds. “Sometimes there’s this fear of stopping, like, is it okay to just go hang out in the desert for a year with my tools and my dog? Is that alright? Will I lose my relevance?”
        The SoCal desert, to many, means manicured lawns, pristine golf courses, pavements so clean you could eat off them, gleaming in the sunlight city of Palm Springs. But beyond that, past the Yucca Valley and 29 Palms you’ll find Joshua Tree. The sparsely populated basin in the high desert is where iO’s second home is. Amidst savage terrain that appears to go for miles in a haze of heat—heat that has kept many from settling here—is a mirage-like homestead. Not content with one desert abode, iO is also working on the second iteration of Coming Soon Land in Joshua Tree. The first of which was in Wonder Valley and involved transforming a run down house into a dream-like bubblegum pink space. The project was in collaboration with New York design and furniture store and showroom Coming Soon, NY to create a new hospitality experience. Coming Soon 2.0 is currently in the works and will be back in Joshua Tree with a similar concept, this time building from the ground up, giving iO further creative freedom for an entirely new design.
        For iO, taking time out in the desert is key to self-care, to incubate his new ideas, to protect from burn-out, and ultimately to carve out a quiet, safe space to call home. “Since I was really little I’ve always longed for a roof that no one could take from me and this project happened while I was finishing my book,” he says. “Those two things are not a coincidental collision, it was very cathartic to finish the book, which then gave me enough money for the first time in my life to have a home. I wrote about this period of my life where I couldn’t have a home, which was painful and traumatic and because I did that I have this! And it was this beautiful meeting point.”")

Article.create(category: "opinion",
  person: "",
  headline: "Sampling Japanese culture with the locals in Düsseldorf’s Little Tokyo; Freunde von Freunden",
  subhead: "Companion takes a stroll between the streets and through the history of the Japanese quarter",
  tag: "Society",
  contributor_id: 1,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/auto-draft/Freunde-von-Freunden-District-Tour-Duesseldorf-0006-1600x1067.jpg",
  body: "About one quarter of all Japanese people in Germany live in and around Düsseldorf. No wonder, then, that this metropolitan region is also being shaped by Japanese culture. Over the years, the district around the centrally located Immermannstraße in particular has become a sort of Little Tokyo that attracts locals and tourists with culinary delicacies, ceramics, art, tea, and literature from Japan—reason enough for COMPANION to have look around and meet up with the community.
  The table looks like a chaotic setting from a scene in an anime show: countless small plates and cups, hardly larger than a doll’s, cover almost every millimeter. Squeezing onto similarly tiny stools around the table, there are a handful of full-grown adults—ready and waiting for tea time. Here at ANMO Art/Cha, in a quiet cross street off the bustling Immermannstraße in Düsseldorf’s center, Japanese tea tasting is taking place. The interested guests sip happily through the assortment of mild-to-bitter green teas, as well as through specialties of sweet and tart tea, matcha and earthy-tasting pu-er.
  The atmosphere is casual and cheerful, which is not always the case in the context of tea tasting. “Tea originally came to Japan through China, and now it has a tradition going back over a thousand years,” says Motoko Dobashi. In traditional Japanese tea ceremonies, there are strict rules and hierarchies. “We take a more relaxed view and want our customers to be able to enjoy their tea at home,” says Motoko. “Here they get to know the variety and special features of each tea. And customers are very interested in tea culture. For many, this is a completely new field. We notice that the appreciation of tea is increasing.”
  In addition to the tea selection from Japan and China, ANMO, founded by Motoko and Anna Friedel in 2017, also offers a large selection of old and new handmade ceramics, a small assortment of modern kimonos and fashion accessories, and “art,” Anna says with a smile. “When we opened the shop we knew we also wanted to be a gallery with changing exhibitions. But being Japanese is not a must for the artists,” says Anna, laughing.
  She and Motoko are both artists, so the idea of integrating a gallery was an obvious one. The pair got to know each other during their studies in Munich, before traveling to Japan and Hong Kong together. Anna has fostered a fascination with Japanese culture since childhood, and she has been doing Asian martial arts as a competitive sport for years. “The philosophy and culture behind it cannot be ignored,” she says.
  Anna moved to Düsseldorf a few years earlier “for love’s sake.” Her friend Motoko, who was living in Berlin, had to be convinced to come to the Rhineland with her family. “For the children, it’s also nice to get to know Japanese culture,” Anna says. And nowhere else in Germany can they do this better than in Düsseldorf—Nippon on the Rhine.
  Trade relations between Germany and Japan have existed from as early as the 19th century. Japan later developed strong trading ties to the Rhine and Ruhr regions after World War II, where they would find the steel and chemical products needed for rebuilding their war-ravaged nation. Centrally located, Düsseldorf was well-suited to be a commercial center, and starting in the ’50s, Japanese companies settled in the area. There are about 200 of these companies in Düsseldorf—and nearly 500 in the greater metropolitan area—making them a significant economic force in the region.")
Article.create(category: "opinion",
  person: "",
  headline: "A Roman curator reinvents communal and design-conscious dining experiences",
  subhead: "Our Secret Table hosts intimate dinners in secret locations, and identifies a long overdue need to diversify its city’s culinary portfolio",
  tag: "Society",
  contributor_id: 2,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/our-secret-table/Freunde-von-Freunden-Our-Secret-Table-11_OST-1600x1067.jpg",
  body: "Although the Italian capital boasts unparalleled relationships with food and art, the dining project Our Secret Table establishes a marriage that Rome has long missed. Merging curatorial practice and exclusive dining as a gesture of love, its founder reassesses the true essence of la dolce vita.
  Born out of the love for her city and a curiosity for unusual hidden places, Our Secret Table is the brainchild of Valentina Guttuso, artistic director and founder of design and event agency TALEA. Keen to push the boundaries of traditional Roman environments, Guttuso’s eye for architecture and spatial design unites people at locations across Rome that remain top-secret until the last minute, while she has kicked off a movement focused on conviviality and social experimentation.
  “Rather classic” are the terms that spring to Guttuso’s mind when describing the local food scene and the scarceness of pop-ups comparable to regular occurrences in cities such as Berlin or London. “There are certainly interesting scenarios and realities but, in my opinion, too large a slice of this business is linked to mass tourism and conventional restaurants, be they historical or new, which is unfortunate. These phenomena often lead to fast-gastronomic proposals without quality, research and identity,” says Guttuso. Recognizing a breeding ground to enrich formats, the trained contemporary art historian and curator eagerly implements her vision for the intersection of event production and creativity: “With Our Secret Table, I want to break up these codes and shine a light on food outside of traditional canonical spaces.”
  “It’s the idea of other people falling in love with spaces that bewitched me at first sight, and creating a climate that is warm, convivial, and stimulating.&#8221;
  Shifting between environment and setting, space and food, the monthly event proves how contemporary design and rustic charm aren’t mutually exclusive: Our Secret Table equally screams <em>Roman Holiday</em> mixed with a modern-day urban retreat. At long wooden tables with carefully curated settings and flower arrangements, positioned between towering bookshelves, retro furnishings and state-of-the-art kitchen counters, creative locals rub shoulders to witness renowned cooks infuse gastronomic energy into offbeat locations that vary from private apartments or gardens to public art galleries. “It’s the idea of other people falling in love with spaces that bewitched me at first sight, and creating a climate that is warm, convivial, and stimulating at the same time,” Guttuso muses. “The atmosphere is always beautiful. The first guests who arrive help the chef make the last preparations for the dinner,” the founder continues. Naturally, they are greeted with wine or prosecco, and an amuse-bouche. Kept dark until the very last minute, the four-course menu is introduced by each individual chef—the project’s inaugural dishes in October were entirely dedicated to the flavors and aromas of the season with mushrooms, black cabbage, chestnuts and pumpkin.
  Hosted in an open-plan, airy loft in the heart of Rome, the first venue also successfully anticipated the project’s distinctive DNA: However different the locations, it’s their poetic aspect that permeates the series, representing Rome from historical, stylistic, and aesthetic point of views. “Currently, we are looking for a cool outdoor space to suit the summer time, such as a Roman terrace or a big wild garden,” Guttuso says. “Each individual dinner unfolds from that decision, including the staging, collaborators, and the chef that could best interpret the event.”
  The creative team always involve people who share the project’s philosophy, and trust their vocation to either reinterpret or pay tribute to their Mediterranean identity and traditions. “Generally, we let our chefs express themselves and share their ideas with us before we co-write the menu, which always involves different culinary realities,” Guttuso explains. On the local note, the founder remarks that every chosen ingredient is sourced within close proximity: “We mainly buy from markets and direct producers—seasonal products are fundamental to taste and authenticity.”
  Each event, Guttuso witnesses guests remaining at the table to chat and interact long after the food is finished. “The driving force of Our Secret Table is to amaze and engage guests within an apparently just gastronomic experience. Our strength is to involve creative people who like to share a table and discover food,” she says. Additionally, the founder sees the opportunity to nurture original content by introducing guests to inventive and virtuous brands; from wine and raw materials to fabrics and table objects, Our Secret Table collaborates with various local sponsors to realize one-off, exclusive 360-degree-experiences filling gaps in a gradually developing, yet stagnant food scene.
  “Generally, we let our chefs express themselves and share their ideas with us before we co-write the menu, which always involves different culinary realities.”
  “The project does not pretend to be better than anything else, but stems from a deep desire to somehow renew the Roman panorama,” Guttuso explains. “The fact that it was born in Rome has an immense value for me. It’s like a gesture of love: Rome needs and deserves a sort of Renaissance in terms of projects, content, creativity and imagination. And I sincerely believe that this is going to happen soon,” she adds.
  <em>From its launch in October 2017, Our Secret Table has developed into a monthly event that hosts up to 30 people. Although communal in atmosphere, the evenings are intimate, and even the menu remains top-secret until the guests arrive; the organizers only inform their guests of the dinner’s theme. The next edition of the project, on 21 April, will revolve around spring. To sign up, visit TALEA’s website.</em>")
Article.create(category: "opinion",
  person: "",
  headline: "A new generation of business owners are enlivening the retail sector with store concepts for a sensory shopping experience",
  subhead: "Bag label QWSTION creates its stores with a multifunctional approach, where meeting place meets design platform, and retail space",
  tag: "Business",
  contributor_id: 3,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/eine-neue-generation-von-ladenbetreibern-belebt-den-einzelhandel-mit-konzepten-fur-zeitgemases-einkaufen/Freunde-von-Freunden-Qwestion-Vienna-14-1600x1064.jpg",
  body: "In-store shopping may have dipped in popularity but it’s yet to be a relic of a bygone era. The once-doomed retail sector has undergone an adjustment phase to adapt to times of digitalization and the spread of major chains.
  In the past, consumers would enter a shop, point to the items he or she wanted, and a person behind the counter would pull them from the shelves. A lot has changed since then. Businesses reoriented themselves to better meet the needs of their customers and another paradigm shift came with the advent of online shopping. Large retailers, such as Amazon, have since offered not only a comfortable shopping experience, but also the lowest prices and largest selection. You are no longer required to leave the house to meet your daily needs; nearly everything can be ordered online and delivered straight to your door. In our convenience culture, permanent retail establishments have had to get creative in order to survive in the midst of online shopping and the unchanging presence of chains. In response, some young brands are specializing in the high-quality production of one particular item. Such is the case with Swiss bag manufacturer QWSTION.
  Today’s shop owners are pursuing unconventional collaborations with creatives from other areas and transforming their stores into hybrid spaces that function as lively meeting places, design platforms, and retail venues. They take transparency seriously, and since they have top-of-the-line production standards, there is nothing to hide. In many cases, you can even watch the product being produced in-store. Both New York chocolate manufacturer Mast Brothers and Fiona Bennett’s Berlin hat shop use this show and tell concept. Other stores stand out with their carefully curated selection of products, and others still combine these ideas into a unique business model.
  “Everyday shopping will move more and more online since practicality and comfort are most important. But sensory shopping will stay.”
  We can thank the courage and passion of these small retailers for the return of stores that are both important and interesting. On the one hand, these retailers realize the traditional strengths of their businesses and engage in thought through contemporary practices, on the other, they recognize the longings of more conscious and critical consumers who are tired of consuming blindly. They understand that the in-store shopping experience is enjoyable in ways that online shopping cannot possibly offer; for example, the curious feeling you get when you stumble upon an intriguing window display and consider whether to enter or simply admire the unusual store front, or touching actual materials while browsing. Andreas Hladky is an industry expert and advises businesses on online marketing strategies. He agrees that these experiences cannot be replaced, “Everyday shopping will move more and more online since practicality and comfort are most important. But sensory shopping will remain.”
  One model in particular is acting as a counterweight to the success of online shopping: concept stores. Not only do they offer a curated range of products, but they also put the physical shopping experience front and center. It’s not unusual to see special events such as lectures, concerts, and coffee tastings setting the tone in these stores. Of course, markets, bazaars, and shops have long served as meeting places for buyers and sellers as well as for consumers to meet one another and exchange. This is obviously not the case with virtual shopping and it’s often missing from the stores of major chains. In their 2018 Retail Report, the German think-tank Zukunftsinstitut described the move to include these social aspects in commerce as a return to human retail. “In a digital world, aesthetic, emotional, and spiritual brands gain in importance. Retailers become brokers of human aspirations; retail spaces become creative living spaces that offer sensory and personal experiences.”
  A place to sit, read or have a coffee—QWSTION's stores in Zürich, Vienna and Copenhagen invite visitors to linger for a while.
  For the owners of the Swiss bag label QWSTION, direct customer contact was an important factor from the beginning and one that played a major role in their vision of an appropriate store concept. “We really considered why someone would still need to go shopping and came to the conclusion that the overall experience is important,” says Christian Kaegi, one of QWSTION’s five founders. He was actively involved in every step of the concept design. The team sought to meet the needs of a generation of consumers who value experiences at least as much as material goods and who don’t visit shops for the sole purpose of buying particular items, but also out of pure curiosity.
  After launching QWSTION’s web shop, the team experimented with temporary stores at various locations. After all, location determines whether you become well established or have to close immediately. Different crowds populate high-frequency shopping districts and quiet alleyways or areas with bookshops and galleries. This test phase resulted in the first fixed QWSTION store in Zurich. It is located in a courtyard, similar to Voo, the successful fashion concept store in Berlin. These stores aren’t easy to find for passersby—a conscious decision on the part of the owners. “A lot happens by word of mouth for QWSTION. It takes more time to build up a site and for people to know that we’re here, but it’s proven itself successful in the end,” says Christian Kaegi.
  “We tell stories&#8230;You have to offer the customer more than they get online and give them a reason to come back to the store.”
  The design studio and a repair workshop are also located in the central Zurich store, meaning visitors to the retail space get a peek at how the bags come to be. QWSTION now has additional locations in Vienna and Copenhagen. However, their business model differs from typical chains with multiple stores. Even their approach to opening new locations is different, “We look at the local area around each of our stores and find partner brands there.”
  From the beginning, QWSTION has built relationships with other brands that share similar values and has incorporated everyday products from different areas into the sales range alongside their own products. The team is passionate about contemporary design and creates space for this passion: There is a platform for young design in each of their three stores. This provides an opportunity for local studios to showcase their products in the store during three to six month residencies. “We’re coming as an outside brand into a new city and offering our products, so we try to build a dialogue with the local creative community,” explains Christian Kaegi. It’s a collaboration that suits all sides.
  The stores are also physically adapted to fit the overall concept. The configuration of the store and the display arrangements were designed and purpose built by Christian Kaegi and his partners. The flexible and minimalist look mirrors the products themselves. The resulting aesthetic is reminiscent of pieces of art on display in galleries—a world away from off-the-rack goods.
  “We don’t think consuming is bad. The question is, what are you consuming and how is it produced?”
  Consumers are slowly, but surely responding to the problems in the fashion industry. Millennials in particular are holding companies to higher ecological and ethical standards. The question of justified consumption is more important in today’s retail sector than ever before and it is one that QWSTION is constantly contemplating. “You could put our approach under the umbrella term ‘conscious consumption.’ We don’t think consuming is bad. The question is, what are you consuming and how is it produced?”
  This new awareness isn’t a problem for many brands. They are actively utilizing the demand for more transparency. Storytelling is the new buzzword in modern marketing strategy. The story of a product and its production is now part of the product itself and is thus communicated. “The majority of our customers are very interested in the origins of our products,” says Maria Baer, head of the Zurich QWSTION store. This is also leading to a shift in role of the salesperson in the digital era. There is now a local network of regulars that meet for coffee on saturdays and frequently attend the store’s events, which helps build trust and a familiar connection to the brand.
  If a brand concept simultaneously uses all available channels and stretches its own business into digital spaces, online shopping isn’t really competition for shop owners. A supplementary webshop enables a brand to communicate with a wider audience and draw attention to itself. The online platform may be the first contact point and can also serve to complete a transaction that began in store. The internet presence of the brand, both the individual website and social media channels, is tied to the overall perception of the store. They both influence and depend on one another.
  According to industry experts, the distinction between the two categories won’t make any sense going forward. People will always shop both online and offline. The connection between the two worlds is where exciting things are happening—the space where a unique online world is translated into a real shop and vice versa.
  <em>A goal of the Swiss bag label QWSTION is to raise awareness about sustainable manufacturing processes in contemporary product design. The business lives by this philosophy, but it also shapes the continued development of its store concept. After all, in the era of ubiquitous online shopping, it takes innovative ideas to get people into stores. Whether that means offering products from a carefully curated group of other brands or hosting regular events that open the retail space and offer transparency.")
Article.create(category: "opinion",
  person: "",
  headline: "A spotlight on women in film and gastronomy with the Clam Club collective",
  subhead: "The film and supper club dedicated to promoting the work of leading females in the fields of food and film",
  tag: "Society",
  contributor_id: 4,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/clam-club-feminist-film-and-supper-club/Freunde-von-Freunden-Clam-Club-Friends-Space-0644-1600x1068.jpg",
  body: "Talented women all over the world are joining forces in increasing numbers to combat the patriarchy through the concentrated synergy of their networks. One of these young communities is Clam Club, the inaugural meeting of which recently took place in Berlin. And this is only the beginning.
  Flickering candles give off just enough light to admire the delicate flowers and seashells scattered between dishes of glowing pink beetroot labneh and crackers spread across long communal tables. The warm scent of caramelized butter floats through the air, subtle clangs and sizzles are emitted from the kitchen, while a documentary featuring on-the-fly kitchen interviews are being screened onto the bare walls of this converted warehouse space in Berlin-Kreuzberg.
  The evening event held at the FvF Friends Space, which consists of a dinner and film screening followed by a discussion, is no less auspicious than the culinary delicacies filling the plates. It is the first meeting of Clam Club, an association of talented women and one of the many local feminist communities currently emerging around the world.
  The goal of Clam Club is to bring together women with similar interests, passions, and career paths, to encourage banding together as a community to allow themselves to be publicly seen, heard, and respected for their work in industries still dominated by men—such as the film industry or gastronomy—two realms that Clam Club focuses on. “To get ahead in work and life, networks are needed,” says Clam Club’s founder, Kathrin Kuna. Yet, these networks often take the form of dusty patriarchal structures. Therefore, she adds, “women need to start building their own strong communities.”
  Kathrin collaborated closely with filmmakers and chefs for many years while working for the Berlinale. With growing frustrations with her job in a major institution, other women in hospitality encouraged her to start her own business—encouragement that led to the birth of Clam Club. Kathrin’s first event saw Danish-born, Berlin-based chef Victoria Eliasdóttir, who has already made a name for herself in the German capital, conjure up a three-course dinner, which was served during the German premiere of <em>The Goddesses of Food.</em>
  The documentary, directed by French filmmaker Vérane Frédiani, part of the French women’s film club “Le Deuxième Regard” poses the question of whether there are any strong women in the restaurant business today. Of course, the answer is yes. The light that Vérane sheds on this matter reformulates one of the great feminist questions from: “Why have there been no great women artists?” to: “Why aren’t great women artists being recognized?”
  While their male colleagues in the kitchen celebrate countless successes, women are being left behind in the shadows. Acclaimed for their creativity and expertise, male chefs team up with investors, thereby gaining even more attention, which results in further recognition—and so the spiral continues. For women, the opportunities for advancement in gastronomy, as well as in film, are still limited.
  “Women need to start building their own strong communities.”
  This inequality is not just a matter of feeling, but a truth that reveals itself through facts. Over the past 27 years, there have been 361 James Beard Awards for chefs, with only 81 of them having gone to women. The 2018 Michelin Guide Italy features not a single woman chef among its new additions. And the film business does not look much different. In 2016, 92 of all Hollywood-produced films were directed by men. In the past 88 years, only one woman has received the Academy Award for Best Director. Not a single woman cinematographer has been nominated.
  The drawbacks can also be formulated closer to everyday life. In kitchens and on film sets, women often feel pressure to conform to aggressive and sometimes hostile, or altogether chauvinistic work cultures in order to be respected. Women who set the tone, in turn, are often labeled as “bossy” or “bitchy,” while the same behavior displayed by men is considered strength of character. And the dilemma of reconciling family and career is particularly present in both the film and hospitality industries, which are both known for their long working hours. Women who raise children while keeping long and intensive working hours are quickly judged as uncommitted mothers. In this respect, men undoubtedly have it easier.
  Despite the long record of injustice, instead of focusing on everything that is wrong with the patriarchy, many of today’s emerging feminist networks are shining the spotlight on what women are doing right — and well — for themselves. This in itself, aided by the strength a tight community such as Clam Club can offer, is a welcome strategy that, hopefully, can alight the spark required to start transforming male-dominated industries.
  After all, women are taking press and communication matters into their own hands with the support of partner organizations, such as the Parabere Forum, an independent non-profit that analyzes the opinions of women working in gastronomy today. Or Pantsuit Nation, a Facebook group with over 2.5 million members that started as a platform for women to show their support for US presidential candidate Hillary Clinton. Today, the once micro project has become a conduit for an international digital women’s movement. Pantsuit Nation demonstrates just how crucial the internet can be for the success of communities whose origins may appear to begin as niche, but soon swell to have a global impact.
  While face-to-face interaction and conversation remain irreplaceable, social networks allow for relationships and ideas to be established across geographic boundaries and time zones. The new global groundswell is equipping women with the resources and support they require to create change in their own communities and, ultimately, around the globe. Clam Club has also been organizing itself via channels such as Facebook since day one. Under the slogan “Spotlight on Women,” supporters and curious women and men can follow its page to keep up to date with current projects and join the latest events. Clam Club’s Facebook rating, by the way, is five stars: the highest the network allows. This accolade, it seems, already foreshadows the success of things to come.")
Article.create(category: "opinion",
  person: "",
  headline: "Once a futuristic movement that symbolized progress, the need to preserve Brutalism is more apparent than ever &#8212; Freunde von Freunden",
  subhead: "Revisiting the style that slipped in and out of fashion and favor for generations",
  tag: "Art",
  contributor_id: 5,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/sos-brutalism/Freunde-von-Freunden-Brutalism-SOS-Kariakoo-Market-Benedikt-Redmann-1461x1200.jpg",
  body: "There’s no architectural movement quite as polarizing as Brutalism. To some people, ugly is the first term that springs to mind. Others may enthuse over its intriguing aesthetic, evoking nostalgia; they see beauty in the raw, frank and resistant qualities.
  Defining Brutalism, however, causes less debate. Flourishing from the 1950s to the late ’70s the style was both futuristic and progressive. Brutalism or “beton brut” refers to the exposed concrete, architecture that simultaneously celebrates boldness and experimentalism—and not characteristically brutal or menacing. While in opposition to the sleek elegance of Bauhaus and romance of Art Deco it has gained momentous international attention—be it admiration or rejection—scholars have defined Brutalism as a global phenomenon that has surpassed material expectations.
  Brutalism dominated much of post-war architecture. It impacted cityscapes and landscapes, from peripheral towns to urban metropolises and embodied an era of nation-building. At the time, large parts of Africa and Asia were still undergoing decolonization; Europe and Japan were recovering from war. Globally appealing, Brutalism quickly morphed into an interregional style that saw universities, municipal offices, museums and more housed within the confines of concrete blocks.
  Inside the bustling market hall of Kariakoo in Dar es Salaam, Tanzania, one of East Africa’s busiest shopping districts, colorful stalls of local vendors selling regional fare along with clothing to souvenirs and hardware are strung along the labyrinth rows. The hall is covered by a towering concrete canopy inspired by patterns in nature and divided by columns repurposed to collect rainwater, shoppers find themselves inside a complex structure once a symbol of the region’s urban development. Built in the ’70s, a decade after the country’s independence from Britain, the construction of the large-scale marketplace led by one of Africa’s first architecture studios anticipated a wave of similar projects. Although the design summarizes region-specific efforts of Tropical Modernism, its maintenance isn’t a priority to local authorities—let alone to international world heritage lists.
  Yet more importantly for Tanzania and other sub-saharan countries, such as Kenya, Ghana, and Zambia, as well as Middle Eastern and South Asian regions, the then growth of local infrastructures helped shape national identities. Although the break from colonial powers didn’t yet include financial independence, the implementation of Brutalist concepts nurtured generations of young creatives eager to marry local traditions and international technologies and resources. Results included constructions with grid structures or layered facades.
  With geo-political changes, various Middle Eastern countries saw the potential of Brutalist-style urban developments to represent power, wealth and progress, the construction of the Iranian University of Shiraz built in 1971 to celebrate the monarchy’s 2500th anniversary being a case in point. To complement religious sites with examples of the modernist movement,  architects were given the task of merging local heritage and international influences.
  photographer_id: 1Mh of Russia’s architectural landscape is dotted with Soviet-era Brutalist constructions, such as St Petersburg’s Hotel Rus, which is one of many cherished examples of the modernist movement. O. Gurevich and V. Zhukov: Hotel Rus, Saint Petersburg, Russia, 1980–1988.
    Photo by Konstantin Antipin, 2016.
  The University of Shiraz in Iran was influenced by American universities increasingly built in concrete. The architect, Minoru Yamasaki, later designed the World Trade Center. Minoru Yamasaki and Mohammad Reza Moghtader: Pahlavi University (today: University of Shiraz), Shiraz, Iran, 1960–1979. Photo by Hamid Reza Bani, 2017.
  Latin American buildings such as the Teresa Carreno Theater in Caracas, Venezuela, verify the local popularity of colossal and often dramatic structures. Jesús Sandoval, Tomás Lugo Marcano, Dietrich Kunckel: Theater Teresa Carreño, Caracas, Venezuela, 1971–1983. Photo by Antolin Sanchez, 1990.
  In Kuwait, Brutalism created meeting points of local traditions and durable structures; Suq Al-Muttaheda houses multifunctional car parks, office spaces and bazaars. 40 years after its inauguration, the original facades remain unmodified. John S. Bonnington Partnership and Kuwait Engineering Office: Suq Al-Muttaheda / Suq Al Masseel, Kuwait City, Kuwait, 1973–1979. Photo by Nelson Garrido, 2013.
  Celebrating the arrival of a global trend, Israel’s role in Brutalism was mainly defined by Be’er Scheva, a concrete city located in the Negev Desert. Ben Gurion University Campus, Be’er Scheva, Israel, 1968–1995. Photo by Gili Merin, 2017.
  Uniting Japanese spirit and Western technologies, Brutalism first emerged in Japan as efforts of rebuilding began to replace the notions of a country in turmoil. Government building of Kagawa, Takamatsu, Japan. Photo by Kentaro Tsukuba, 2013.
  In recent years, activist endeavors to preserve Brutalist heritage and ensure future redevelopments have increasingly found confirmation in popular culture. Whilst many colossal and dramatic concrete structures now saturate social media feeds, their history and contemporary building statuses employ academic researchers. The buildings’ everlasting appeal? An aesthetic that suggests something needn’t be fully developed to nurture creativity. Common interpretations associate the concrete buildings with artisanal perfection as well as symbols of self-exploration and societal change. Yet while Brutalism is experiencing a Renaissance—think the popularity of London’s Barbican Centre or former Soviet cities thriving on Brutalist architecture such as the Macedonian capital of Skopje—only few investments have breathed new life into often derelict complexes. Eager to reintroduce the public to the movement’s legacy and save the physical testimonies from demolition, organizations have founded the initiative #SOSBrutalism, a hashtag that now takes center stage at a namesake exhibition in Frankfurt am Main.")
Article.create(category: "opinion",
  person: "",
  headline: "To challenge our perceptions of queer relationships, artist Paul Mpagi Sepuya depicts intimate fragments of reality",
  subhead: "Creating honest yet playful records of society, the artist continues to take his viewers inside his studio",
  tag: "Society",
  contributor_id: 6,
  photo: "https://www.freundevonfreunden.com/wp-content/uploads/to-challenge-our-perceptions-of-queer-relationships-artist-paul-sepuya-depicts-intimate-fragments-of-reality/Freunde-von-Freunden-Paul-Sepuya-Work-Darkroom-Mirror-HR-Feature-Crop-1600x1067.jpg",
  body: "We strive to revisit many of our protagonists and check in on their new creative endeavours. Six years on, we followed up with artist Paul Mpagi Sepuya to see how his body of work has evolved.
  Varying between simple portraits, sometimes nude, and experiential collages that either portray the artist, one or more of his subjects or combine all three, the results feature carefully crafted fragments that rarely depict entire bodies. By draping fabrics, shooting against mirrors, layering extracts of older works, Sepuya experiments within the confines of his studio, whose function he sees as an important element of his practice. Years into his career, Sepuya’s photographs remain deliberately provocative: the homoerotic images depict intimacy as an exploration of human relationships—all of Sepuya’s subjects are friends, intimates, and muses.<br>
  These studies of figures, grounds or other objects that enable the artist to create imaginative records of society will be featured in various US exhibitions this year.
  What have you been up to recently and how has your work generally developed over the years?
  I have been trying to spend as much time in my studio as possible, it takes a lot of loose time and attempts and failure to work things out. I am teaching part time, doing a lot of visiting artist lectures and studio visits with students, which I enjoy as well.
  If anything I hope the new work is getting more explicit, and more honest. And playful.
  Can you describe the relationship to your recent subjects? Are your personal and professional lives still as intertwined?
  Yes, nothing has changed. I can’t work with models or strangers. Portraiture and mutual investment on my part and that of my friends is necessary for the work.
  You once referred to queerness as a way that opens up many ways of looking at relationships. How do you define your work today?
  It’s not and cannot be about defining anything, proscribing or styling. To be honest, my work is pretty much just “gay” in terms of content. It is homoerotic and homosocial. But it has formal elements and the questions asked are very queer.
  How would you describe the raising interest in queer art and its meaning to the contemporary art world?
  Raising interest is a trend, but queerness is essentially human and will go on. Hopefully we artists working in these themes connect to the larger world of ideas, the fundamental histories of the medium. That’s why I am interested in its embeddedness in the operations of photography, whether or not a queer or black person is “visible” in an expected way. Queerness is everywhere, blackness is everywhere, and this explosion of work should change how we look at all art going forward, because a trend for a type of representation will come and go.")

puts "#{Article.count} articles have been seeded"
