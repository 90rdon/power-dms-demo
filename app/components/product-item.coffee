productItem = Ember.Component.extend
  actions: 
    addItemToCart: (item) ->
      @sendAction('action', item)

`export default productItem`