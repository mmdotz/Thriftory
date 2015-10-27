var Navigation = React.createClass({
  render: function() {
    return (
      <nav className="navbar navbar-default">
        <div className="container-fluid">
          <div className="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul className="nav navbar-nav">
              <li><a href='/home'>Home</a></li>
              <li><a href='/login'>Login</a></li>
              <li><a href='/logout'>Logout</a></li>
              <li><a href='/items'>Inventory</a></li>
              <li><a href='/categories'>Categories</a></li>
              <li><a href='/items/new'>Add a new item</a></li>
              <li><a href='/sources'>Sources</a></li>
            </ul>
          </div>
        </div>
      </nav>);
  }
});
