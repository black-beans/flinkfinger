services = [
  ['Server', 15]
  ['Linux', 13]
  ['OS X', 13]

  ['Netzwerk', 13]
  ['TCP', 6]
  ['IP', 6]
  ['DNS', 8]
  ['HTTP', 12]

  ['Hosting', 14]
  ['Redundanz', 10]
  ['Verfügbarkeit', 12]

  ['Cloud', 10]
  ['Amazon', 10]
  ['Google Apps', 10]

  ['Datenmodelierung', 10]
  ['E/R', 10]
  ['UML', 10]
  ['ORM', 10]

  ['Geschäftslogik', 10]
  ['OOA/OOD', 10]
  ['State Machine', 10]
  ['Payment', 10]

  ['SQL', 10]
  ['PostgreSQL', 10]
  ['MySQL', 14]

  ['NoSQL', 12]
  ['MongoDB', 12]
  ['Redis', 8]
  ['Memcached', 10]

  ['MVC', 19]
  ['Rails', 17]
  ['Marionette', 14]
  ['AngularJS', 10]

  ['REST API', 20]
  ['JSON', 10]
  ['XML', 8]
  ['Maturity Level', 10]

  ['Testing', 20]
  ['Unit Tests', 14]
  ['Integration Tests', 15]
  ['RSpec', 14]
  ['Jasmine', 10]
  ['Cucumber', 8]

  ['Automatisierung', 18]
  ['Tests', 14]
  ['Qualitätssicherung', 10]

  ['Webapplikationen', 22]
  ['JavaScript', 10]
  ['CoffeeScript', 15]
  ['Backbone', 18]

  ['HTML5', 18]
  ['Semantik', 16]
  ['Markup', 14]
  ['HAML', 17]
  ['API', 12]

  ['CSS3', 16]
  ['Browser', 15]
  ['SASS', 12]
  ['Compass', 10]

  ['Usability', 12]
  ['Analyse', 16]
]

$(->
  cloud = $('#wordcloud')

  canvas = $('#wordcloud canvas')
  canvas.css '-webkit-transform', 'scale(0.8)'

  cloud.mousemove (e) ->
    o = $(@).offset()

    w = cloud.width() / 2
    h = cloud.height() / 2

    relX = e.pageX - o.left
    relY = e.pageY - o.top

    x = (w - relX) / w * 20
    y = (h - relY) / h * 20

    canvas.css '-webkit-transform', "scale(0.8) translateZ(0) rotateX(#{ y }deg) rotateY(#{ x }deg)"

  WordCloud(canvas[0],
    fontFamily: 'Droid Sans'
    color: 'rgba(0, 0, 0, 0.8)'
    rotateRatio: 0.5
    backgroundColor: 'transparent'
    list: services
    #gridSize: Math.round(16 * cloud.width() / 1024)
    # weightFactor: (size) ->
    #   console.log 'Size', size
    #   Math.pow(size, 2.3) * cloud.width() / 1024
  )
)
