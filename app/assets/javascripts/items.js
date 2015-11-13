 $(document).ready(function() {
    $('#categories_select').change(function() {
      $.ajax({
        url: '/update_subcat1',
        data: {
          category_id : $('#categories_select').val()
        },
        dataType: "script"
      });
    });
    $('#subcat1s_select').change(function() {
      $.ajax({
        url: '/update_subcat2',
        data: {
          subcat1_id : $('#subcat1s_select').val()
        },
        dataType: "script"
      });
    });
  });

  //once the document loads
  //when the category selection is clicked
  //get a filtered list of subcat1s via AJAX
  //based on the id of the category selected
  //after that is returned
  //when the subcat1 selection is clicked
  //get a filtered list of subcat2s
  //based on the subcat1_id chosen
