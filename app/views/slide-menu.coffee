slideMenuView = Ember.View.extend
  didInsertElement: ->
    slideMenuButton = document.getElementById('slide-menu-button')
    slideMenuButton.onclick = (e) ->
      cl = document.body.classList
      if cl.contains('right-nav')
        cl.remove 'right-nav'
      else
        cl.add 'right-nav'
      return

    # @showView 'button-bar-tpl'
    # tab = document.getElementById('tab1')
    # tab.classList.add 'is-active'

`export default slideMenuView`