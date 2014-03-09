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

  addItemToCart: (item) ->
    @pushObject(item)

`export default cartController`