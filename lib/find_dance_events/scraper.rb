class FindDanceEvents::Scraper

  def self.scrape_dancecal
    doc = Nokogiri::HTML(open("http://dancecal.com/"))
    events = []

    doc.css(".DCEvent").each do |e|
      event_name = e.css(".DCEventInfoName").text
      event_location = e.css(".DCEventInfoWhere").text.split("City: ")[1]

      if e.css(".DCEventInfoWhere").text.split(", ")[2]
        event_country = e.css(".DCEventInfoWhere").text.split(", ")[2]
      else
        event_country = e.css(".DCEventInfoWhere").text.split(", ")[1]
      end

      event_date = e.css(".DCEventInfoDate").text
      event_dance = e.css(".DCEventInfoDances").text
      event_desc = e.css(".DCEventInfoDesc").text

      events << {name: event_name, location: event_location, country: event_country, date: event_date, dance: event_dance, desc: event_desc}
    end
      events.uniq!
  end

end

#location = doc.css(".DCEventNameLocation").text
#state = doc.css(".DCEventNameLocation").text.split[1]
#name = doc.css(".DCEventInfoName").text
#date = doc.css(".DCEventIntoDAte").text
#dance = doc.css(".DCEventInfoDances").text
#url = doc.css(".DCEventInfoName a").attr("href")
#desc = doc.css(".DCEventInfoDesc").text
