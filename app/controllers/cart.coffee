cartController = Ember.ArrayController.extend
  total: (->
    @.reduce (prevPrice, item) ->
      itemPrice = item.get('price')
      prevPrice + itemPrice
    , 0
  ).property('@each.price')

  count: (->
    @get('length')
  ).property('@each')

  actions:
    addItemToCart: (item) ->
      @pushObject Ember.Object.create
        id: ++Ember.uuid
        type: item.get('type')
        title: item.get('title')
        description: item.get('description')
        author: item.get('author')
        fullImageUri: item.get('fullImageUri')
        price: item.get('price')

    removeItemFromCart: (item) ->
      @removeObject(item)

`export default cartController`