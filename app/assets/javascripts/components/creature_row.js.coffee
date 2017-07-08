@CreatureRow = React.createClass
  modifier: (i) ->
    Math.floor((i - 10) / 2)
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.creature.name
      React.DOM.td null, @props.creature.dexterity
      React.DOM.td null, @modifier(@props.creature.dexterity)
      React.DOM.td null, if @props.creature.alert_feat then 'Sim' else 'Não'
