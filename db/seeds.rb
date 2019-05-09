# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ranjit = User.create(name: "Ranjit", password: "12345678", email: "ranjit@ranjit.com")
pete = User.create(name: "Pete", password: "12345678", email: "pete@pete.com")
myrto = User.create(name: "Myrto", password: "12345678", email: "myrto@myrto.com")

ranjit.bookmarks.build(title: "Dataism article", url: "https://medium.com/understanding-us/dataism-god-is-in-the-algorithm-84af800205cd", private: false).save
ranjit.bookmarks.build(title: "TBL essay", url: "https://www.w3.org/DesignIssues/LinkedData.html", private: false).save
ranjit.bookmarks.build(title: "Manu video", url: "https://www.youtube.com/watch?v=5haIUu6OvRU", private: false).save
ranjit.bookmarks.build(title: "JSON-LD primer", url: "https://json-ld.org/primer/latest/", private: false).save
ranjit.bookmarks.build(title: "Graph article", url: "https://jbarrasa.com/2016/09/12/the-hidden-connections-in-googles-knowledge-graph/", private: false).save

pete.bookmarks.build(title: "Hacker news", url: "https://news.ycombinator.com/item?id=11696329", private: false).save
pete.bookmarks.build(title: "Canvas tutorial", url: "https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial", private: false).save
pete.bookmarks.build(title: "Marcin Gignac", url: "http://marcinignac.com/about/", private: false).save
pete.bookmarks.build(title: "Coding math", url: "https://www.youtube.com/channel/UCF6F8LdCSWlRwQm_hfA2bcQ", private: false).save
pete.bookmarks.build(title: "Kadenze blog", url: "https://blog.kadenze.com/", private: false).save

myrto.bookmarks.build(title: "Taste of cinema", url: "http://www.tasteofcinema.com/2018/10-great-movies-that-wont-bore-you-for-a-moment/2/", private: false).save
myrto.bookmarks.build(title: "Thrill list", url: "https://www.thrillist.com/entertainment/nation/best-sci-fi-movies-of-all-time-ranked", private: false).save
myrto.bookmarks.build(title: "South Park", url: "https://www.reddit.com/r/southpark/comments/3okf7q/best_place_to_watch_south_park_online/", private: false).save
myrto.bookmarks.build(title: "Studio Ghibli", url: "http://moviemezzanine.com/studio-ghibli-retrospective-nausicaa/", private: false).save
myrto.bookmarks.build(title: "Sopranos", url: "https://123movies0.to/tvseries/watch-the-sopranos-season-4-123movies-online/6782/#player", private: false).save

