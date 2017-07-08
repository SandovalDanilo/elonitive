@InitiativeTable = React.createClass
  render: ->
    React.DOM.div
      className: 'col-lg-6'
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
            React.createElement CreatureRow, key: creature.id, creature: creature
