var ThingInput = React.createClass({

  render: function() {

    propTypes: {
      value: React.PropTypes.integer
    },

    return (
      <div class="thing-input">
        <div class="value-button minus-button">-</div>
        <div class="value-field">{this.props.value}</div>
        <div class="value-button plus-button">+</div>
      </div>
      );
  }
});
