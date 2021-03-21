class AddImprintArticle < ActiveRecord::Migration[5.1]
  def up
    Article.transaction do
      Article.create(
        slug: 'Imprint',
        category: 'imprint',
        headline: 'Imprint',
        body: "
            <h3 class='center'>Legal Disclosure</h3>
            <p class='imprint-body'>Information in accordance with Section 5 TMG <br/>
            cocreation.x gGmbH<br/>
            Schinkestraße 9<br/>
            12047 Berlin</p>

            <h3>Represented by</h3>
            <p class='imprint-body'>Jan Stassen</p>

            <h3>Contact Information</h3>
            <p class='imprint-body'>Telephone: +491778334735<br/>
            E-Mail: jan@cocreationloft.com<br/>
            Internet address:  www.cocreationloft.com</p>

            <h3>Register entry</h3>
            <p class='imprint-body'>Entry in: Handelsregister<br/>
            Register Number: /<br/>
            Register Court: Neukölln, Berlin</p>

            <h3>Disclaimer</h3>
            <p class='imprint-body'>Accountability for content<br/>
            The contents of our pages have been created with the utmost care. However, we cannot guarantee the contents&#39; accuracy, completeness or topicality. According to statutory provisions, we are furthermore responsible for our own content on these web pages. In this matter, please note that we are not obliged to monitor the transmitted or saved information of third parties, or
            investigate circumstances pointing to illegal activity. Our obligations to remove or block the use of information under generally applicable laws remain unaffected by this as per §§ 8 to 10 of the Telemedia Act (TMG). <br/>
            Accountability for links<br/>
            Responsibility for the content of external links (to web pages of third parties) lies solely with the operators of the linked pages. No violations were evident to us at the time of linking. Should any legal infringement become known to us, we will remove the respective link immediately.
            Copyright<br/>
            Our web pages and their contents are subject to German copyright law. Unless expressly
            permitted by law, every form of utilizing, reproducing or processing works subject to copyright
            protection on our web pages requires the prior consent of the respective owner of the rights.
            Individual reproductions of a work are only allowed for private use. The materials from these
            pages are copyrighted and any unauthorized use may violate copyright laws.</p>"
      )
    end
  end

  def down
    Article.where(category: 'imprint').destroy_all
  end
end
