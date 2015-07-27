DOM = React.DOM

FormInputWithLabel = React.createClass
  displayName: "Form input with label"
  render: ->
    DOM.div
      className: "form-group"
      DOM.label
        htmlFor: @props.id
        className: "col-lg-2 control-label"
        @props.labelText
      DOM.div
        className: "col-lg-10"
        DOM.input
          className: "form-control"
          placeholder: @props.placeholder
          id: @props.id
          type: "text"
          value: @props.value
          onChange: @props.onChange

FormInputWithLabel = React.createFactory(FormInputWithLabel)

CreateNewMeetupForm = React.createClass
  displayName: "CreateNewMeetupForm"
  getInitialState: ->
    {
      title: ""
      description: ""
    }

  titleChanged: (event) ->
    @setState(title: event.target.value)

  descriptionChanged: (event) ->
    @setState(description: event.target.value)
#
  render: ->
    DOM.form
      className: "form-horizontal"
      DOM.fieldset null,
        DOM.legend null, "New Meetup"

        FormInputWithLabel
          id: "title"
          labelText: "Title"
          onChange: @titleChanged
          value: @state.title
          placeholder: "Meetup title"

        FormInputWithLabel
          id: "description"
          labelText: "Description"
          onChange: @descriptionChanged
          value: @state.description
          placeholder: "Meetup description"

createNewMeetupForm = React.createFactory(CreateNewMeetupForm)

$ ->
  React.render(
    createNewMeetupForm(),
    document.getElementById("CreateNewMeetup")
  )
