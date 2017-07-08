@CreatureOptions = React.createClass
  render: ->
    React.DOM.div className: 'row',
      React.DOM.div className: 'col-12',
        React.DOM.h5 null,
          @props.creature.name
      React.DOM.div className: 'col-6',
        'Movimentação (1d6)'
      React.DOM.div className: 'col-6',
        'Ação Bônus (1d6)'
