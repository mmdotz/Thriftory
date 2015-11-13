var Navigation = React.createClass({
  getInitialState: function () {
    return {
      hamburgerOpened: false
    };
  },

  handleClick: function () {
    if (this.state.hamburgerOpened === false) {
      this.setState({ hamburgerOpened: true });
    } else {
      this.setState({ hamburgerOpened: false });
    }
  },

  render: function() {
    return (
      <nav className="navbar navbar-default">
        <div className="container-fluid">
          <div className="navbar-collapse">
            <span onClick={this.handleClick} className="visible-xs glyphicon hamburger-btn glyphicon-menu-hamburger" aria-hidden="true"></span>
            <ul className={this.linkClassName()}>
              <li><a href='/home'>Home</a></li>
              <li><a href='/items'>Inventory</a></li>
              <li><a href='/items/new'>Add a new item</a></li>
              <li><a href='/categories'>Categories</a></li>
              <li><a href='/sources'>Sources</a></li>
              <li><a href='/stats/index'>Stats</a></li>
              <li><a href='/finances'>Costs</a></li>
              <li><a href='/logout'>Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
    );
  },

//action required for small screen click on hamberger menu
  linkClassName: function () {
    if (this.state.hamburgerOpened === true) {
      return "nav nav-pills hamburger-opened";
    } else {
      return "hidden-xs nav nav-pills";
    }
  }
});
