@Initiative = React.createClass
  getInitialState: -> (
    creatures: prepareCreatures(@props.creatures)
  )
  render: ->
    console.log @props.creatures
    console.log @state.creatures
    React.DOM.div className: 'container-fluid',
      React.DOM.div className: 'row',
        React.DOM.div className: 'col-lg-6',
          React.createElement SelectCreature, creatures: @state.creatures
    #       React.createElement Actions, creatures: @props.creatures
    #     React.DOM.div className: 'col-lg-6',
    #       React.createElement InitiativeTable, creatures: @props.creatures

prepareCreatures = (cs) ->
  creatures = {}
  for c in cs
    creatures[c.id] = {
      name: c.name,
      dexterity: c.dexterity,
      alert: c.alert_feat,
      initiative: 0,
      isCurrentCreature: false
    }

  creatures
