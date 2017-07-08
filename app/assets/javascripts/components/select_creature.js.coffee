@SelectCreature = React.createClass
  render: -> (
    <div className="btn-group" data-toggle="buttons">
    </div>
  )
    # React.DOM.h5 null, 'Teste'
    # React.DOM.div { className: 'btn-group', "data-toggle": 'buttons' },
    #   for own index, creature of @props.creatures
    #     React.DOM.label {
    #         className: 'btn btn-primary'
    #       },
    #       React.DOM.input {
    #         type: "radio",
    #         name: "creature",
    #         value: index,
    #         "autocomplete": "off"
    #       }
    #       creature.name
    #     React.DOM.button {
    #       className: 'btn btn-secondary btn-sm col-3',
    #       type: 'button',
    #       key: creature.id
    #       },
    #       creature.name
