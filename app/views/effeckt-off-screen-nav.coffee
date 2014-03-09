selfView = Ember.View.extend
  nav: []
  closeButton: []

  didInsertElement: ->
    @set('nav', $('#effeckt-off-screen-nav'))
    @set('closeButton', $('#effeckt-off-screen-nav-close'))
    @bindUIActions()
    return

  bindUIActions: ->
    self = @
    $('#off-screen-nav-button, #effeckt-off-screen-nav-close').on 'click', ->
      type = $(this).data('effeckt')
      threedee = $(this).data('threedee')
      self.toggleNav type, threedee
      return

    return

  toggleNav: (type, threedee) ->
    self = @
    # Show
    unless self.nav.hasClass('effeckt-off-screen-nav-show')
      self.nav.addClass type
      self.closeButton.data 'effeckt', type
      $('html').addClass 'md-perspective'  if threedee
      setTimeout (->
        self.nav.addClass 'effeckt-off-screen-nav-show'
        return
      ), 500
    
    # Hide
    else
      self.nav.removeClass 'effeckt-off-screen-nav-show'
      setTimeout (->
        self.nav.removeClass self.closeButton.data('effeckt')
        
        # WEIRD BUG
        # Have to trigger redraw or it sometimes leaves
        # behind a black box (Chrome 27.0.1453.116)
        self.nav.hide()
        blah = self.nav.width()
        self.nav.show()
        $('html').removeClass 'md-perspective'
        return
      ), 500
    return


`export default selfView`