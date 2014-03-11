indexController = Ember.ArrayController.extend
  needs: [
    'cart'
  ]
  
  search:         null
  currentContent: null

  productsIsLoaded: (->
    console.log 'controller:index - productIsLoaded'
    @set('currentContent', @get('content'))
  ).observes('content.isLoaded')

  searching: (->
    self = @
    Ember.run.later ->
      self.get('filtered')
    , 500
  ).observes('search')

  filteredContent: (->
    regexp = new RegExp(@get('search'), 'i')
    result = @get('content').filter (item) ->
      hasMatch = item.get('constructor.attributes.keys.list').filter (prop) ->
        regexp.test item.get(prop)

      if hasMatch.length > 0 then true else false
  ).property('search', 'content')

  filtered: (->
    result = Em.ArrayProxy.createWithMixins Em.SortableMixin,
      content:@get('filteredContent')
      sortProperties: @get('sortProperties')
      sortAscending: @get('sortAscending')
    @set('currentContent', result)
  ).property('filteredContent')

  actions:
    addItemToCart: (item) ->
      @get('controllers.cart').send('addItemToCart', item)

    removeItemFromCart: (item) ->
      @get('controllers.cart').send('removeItemFromCart', item)

`export default indexController`