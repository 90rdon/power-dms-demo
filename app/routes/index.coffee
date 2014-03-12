indexRoute = Ember.Route.extend
  model: ->
    @store.find('product')
    
  setupController: (controller, model) ->
    controller.set 'model', model
    result =  ic.ajax('/api/products')
    console.log result
  
  actions:
    addItemToCart: (item) ->
      cart = @controllerFor('cart')
      cart.addItemToCart(item)

    removeItemFromCart: (item) ->
      cart = @controllerFor('cart')
      cart.removeItemFromCart(item)

`export default indexRoute`