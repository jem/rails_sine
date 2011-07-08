/* DO NOT MODIFY. This file was compiled Fri, 08 Jul 2011 06:41:54 GMT from
 * /Users/jem/tmp/richard/app/coffeescripts/application.coffee
 */

(function() {
  var reload;
  reload = function(value) {
    return $.ajax({
      data: {
        value: value
      },
      url: "/data",
      success: function(result) {
        return $.plot($("#placeholder"), result);
      }
    });
  };
  $(function() {
    reload(20);
    $("#slider").slider({
      min: 0,
      max: 100,
      value: 30
    });
    return $("#slider").bind("slide", $.debounce(function() {
      return reload($(this).slider("value"));
    }, 300));
  });
}).call(this);
