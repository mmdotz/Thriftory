 $(document).ready(function() {
    $('#categories_select').change(function() {
      $.ajax({
        url: "<%= update_subcat1_path %>",
        data: {
          genre_id : $('#categories_select').val()
        },
        dataType: "script"
      });
    });
    $('#subcat1s_select').change(function() {
      $.ajax({
        url: "<%= update_subcat2_path %>",
        data: {
          artist_id : $('#subcat1s_select').val()
        },
        dataType: "script"
      });
    });
  });
