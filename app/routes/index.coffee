indexRoute = Ember.Route.extend
  model: ->
    @store.find('product')
    # ic.ajax 'http://homework.powerdms.com/products'
    # $.ajax
    #   type: 'GET'
    #   url: 'http://homework.powerdms.com/products'
    #   datatype: 'jsonp'
    #   success: (response) ->
    #     console.log 'response = ' + response
  
  actions:
    addItemToCart: (item) ->
      cart = @controllerFor('cart')
      cart.addItemToCart(item)

`export default indexRoute`