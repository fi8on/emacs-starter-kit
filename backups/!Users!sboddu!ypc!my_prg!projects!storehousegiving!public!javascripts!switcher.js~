  jQuery(document).ready(function($) {
    $('#colorpicker').ColorPicker({
			onShow: function (colpkr) {
				$(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
        var color = hex;
        var defaultPattern = "url(images/pattern/grid2.png)";
        $('body').css({
            backgroundColor: '#' + color,
            backgroundImage : defaultPattern
        });     
        $.cookie("ecobiz_cookie_color", color);   
        $.cookie("ecobiz_cookie_pattern", null);   
        $.cookie("ecobiz_cookie_defaultBg", defaultPattern);   
			},
      color: '#669100'
    });    
    
    $('#style-switcher a.color-box').each(function (i) {
        var a = $(this);
        a.css({
            backgroundColor: '#' + a.attr('rel')
        })
    })    
    
    $('#style-switcher a.pattern-box').each(function (i) {  
      var a = $(this);
        var patternUrl = 'url(images/pattern/' + a.attr('rel') + '.png)';
        a.css({
            backgroundImage: patternUrl
        })
    })
    
   var switcher_skins = $('#style-switcher a.color-box');
   var switcher_link = $('#skins-switcher');
   switcher_skins.each(function(i) {
    var color = $(this).attr('rel');
    var defaultPattern = "url(images/pattern/grid2.png)";
     
    if (color == "669100") {
      switcher_link.attr('href',"css/green.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });      
    }
    if(color == "2888BF") {
      switcher_link.attr('href',"css/blue.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });   
    }
    if(color == "BF4C17") {
      switcher_link.attr('href',"css/brown.css")
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });    
    }
    if(color == "2B2B2B") {
      switcher_link.attr('href',"css/dark.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });     
    }
    if(color == "DB8F00") {
      switcher_link.attr('href',"css/orange.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });    
    }
    if(color == "C71400") {
      switcher_link.attr('href',"css/red.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });       
    }     
   });  
   
      
   switcher_skins.click(function(e) {
    var color = $(this).attr('rel');
    var skins;
    var defaultPattern = "url(images/pattern/grid2.png)";
    
    if (color == "669100") {
      switcher_link.attr('href',"css/green.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });   
    }
    if(color == "2888BF") {
      switcher_link.attr('href',"css/blue.css");
       var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });   
    }
    if(color == "BF4C17") {
      switcher_link.attr('href',"css/brown.css")
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });    
    }
    if(color == "2B2B2B") {
      switcher_link.attr('href',"css/dark.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });     
    }
    if(color == "DB8F00") {
      switcher_link.attr('href',"css/orange.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });    
    }
    if(color == "C71400") {
      switcher_link.attr('href',"css/red.css");
      var atrrHref = switcher_link.attr('href');
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });       
    }     
    $.cookie("ecobiz_cookie_pattern", null);   
    $.cookie("ecobiz_cookie_bgimage",null);

    $.cookie("ecobiz_cookie_color", color);  
    $.cookie("ecobiz_cookie_skins", atrrHref);
    $.cookie("ecobiz_cookie_defaultBg", defaultPattern);    
    return false;
   });  
   
  var color = $.cookie("ecobiz_cookie_color");
  var ecobiz_skins = $.cookie("ecobiz_cookie_skins");
  var defaultPattern = $.cookie("ecobiz_cookie_defaultBg");
  var pattern = $.cookie("ecobiz_cookie_pattern");
  
  if (ecobiz_skins) {
    $("#skins-switcher").attr("href",ecobiz_skins);
    $('body').css({
        backgroundColor: '#' + color,
        backgroundImage : pattern
    });
  }

  $('#style-switcher a.pattern-box').click(function (e) {
      e.preventDefault();
      var patternUrl = 'url(images/pattern/' + $(this).attr('rel') + '.png)';
      $('body').css({
          backgroundImage: patternUrl,
          backgroundRepeat: "repeat"
      });
      $.cookie("ecobiz_cookie_bgimage",null);
      $.cookie("ecobiz_cookie_pattern", patternUrl)
  });
  
  var defaultPattern = $.cookie("ecobiz_cookie_defaultBg");
  var color = $.cookie("ecobiz_cookie_color");
  var background = $.cookie("ecobiz_cookie_bgimage");
  if (color) {
      $('body').css({
          backgroundColor: '#' + color,
          backgroundImage : defaultPattern
      });
  }
  var pattern = $.cookie("ecobiz_cookie_pattern");
  if (pattern) {
      $('body').css({
          backgroundImage: pattern,
          backgroundRepeat: "repeat"
      });
  } else {
    if (background) {
        $('body').css({
          backgroundImage: background,
          backgroundRepeat: "norepeat",
          backgroundPosition: "top center",
          backgroundAttachment: "fixed"
        });
    }    
  }  

  $('#style-switcher a.bg-box').each(function (i) {
    var backgroundUrl = 'url(images/' + $(this).attr('rel') + '.jpg)';
    var a = $(this);
      a.css({
          backgroundImage: backgroundUrl
      })
  })
    
  $('#style-switcher a.bg-box').click(function (e) {
      e.preventDefault();
      var backgroundUrl = 'url(images/' + $(this).attr('rel') + '.jpg)';
      $('body').css({
          backgroundImage: backgroundUrl,
          backgroundRepeat: "norepeat",
          backgroundPosition: "top center",
          backgroundAttachment: "fixed"
      });
    $.cookie("ecobiz_cookie_bgimage",backgroundUrl)
  });

  var background = $.cookie("ecobiz_cookie_bgimage");
  if (background) {
      $('body').css({
        backgroundImage: background,
        backgroundRepeat: "norepeat",
        backgroundPosition: "top center",
        backgroundAttachment: "fixed"
      });
  }
         
});   
 