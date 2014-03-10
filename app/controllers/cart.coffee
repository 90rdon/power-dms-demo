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
      @pushObject(item)

    removeItemFromCart: (item) ->
      @removeObject(item)

`export default cartController`