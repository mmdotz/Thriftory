//From the landing page choice
//start with an empty search result

var Search = React.createClass({
  getInitialState: function () {
    return {
      items: [],
    };
  },

// get all the categories
  componentDidMount: function () {
    $.ajax({
      url: '/items',
      dataType: 'JSON',
      method: 'GET'
    }).done(function (response) {

      this.setState({
        all_items: response,
        filtered_items: response
      });
    }.bind(this));
  },

  render: function() {
    return (
      <section>
        <p>
          <input className='form-control' type='text'
            onChange={this.handleChange} value={this.state.search}
            placeholder='search items' />
        </p>
        <div className="table-responsive">
          <table className="table table-hover">
            <thead>
              <tr>
                <th>Return items attributes here</th>

            </thead>
            <tbody>
              {this.state.filtered_items.map(function (item) {
                return (
                  <tr>
                    <td><a href={'/items/' + item.id}>{ item.description } </a></td>
                    <td> { item.storage_loc }</td>
                    <td> { item.status }</td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </section>
  );
},

  handleChange: function (event) {
    var filtered_items = this.state.all_items.filter(function (item) {
      return (item.description.toLowerCase().indexOf(event.target.value.toLowerCase()) > -1);
    });
    this.setState({
      search: event.target.value,
      filtered_items: filtered_items
    });
  }
});
