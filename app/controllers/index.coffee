indexController = Ember.ArrayController.extend
  # needs: [
  #   'members'
  # ]

  search:         null
  currentContent: null

  productsIsLoaded: (->
    console.log 'controller:index - productIsLoaded'
    @set('currentContent', @get('content'))
  ).observes('content.isLoaded')

  searching: (->
    self = @
    Ember.run.later null, ->
      self.get('filtered')
  ).observes('search')

  filteredContent: (->
    regexp = new RegExp(@get('search'), 'i')
    result = @get('content').filter (item) ->
      hasMatch = item.get('constructor.attributes.keys.list').filter (prop) ->
        regexp.test item.get(prop)

      if hasMatch.length > 0 then true else false
  ).property('search', 'content')

  filtered: (->
    console.log 'filtered'
    result = Em.ArrayProxy.createWithMixins Em.SortableMixin,
      content:@get('filteredContent')
      sortProperties: @get('sortProperties')
      sortAscending: @get('sortAscending')
    @set('currentContent', result)
  ).property('filteredContent')

`export default indexController`