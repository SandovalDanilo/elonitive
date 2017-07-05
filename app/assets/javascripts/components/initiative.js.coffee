@Initiative = React.createClass
  render: ->
    React.DOM.table
      className: 'table'
      React.DOM.thead null,
        React.DOM.tr null,
          React.DOM.th null, 'Personagem'
          React.DOM.th null, 'Destreza'
          React.DOM.th null, 'Modificador'
          React.DOM.th null, 'Alerta (talento)'
      React.DOM.tbody null,
        for creature in @props.creatures
          React.createElement Creature, key: creature.id, creature: creature

@Creature = React.createClass
  modifier: (i) ->
    Math.floor((i - 10) / 2)
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.creature.name
      React.DOM.td null, @props.creature.dexterity
      React.DOM.td null, @modifier(@props.creature.dexterity)
      React.DOM.td null, if @props.creature.alert_feat then 'Sim' else 'Não'
