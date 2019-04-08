const API_KEY = "ecd6188cd89f474b4502e55baadcaea3"

$(document).on('turbolinks:load', function() {

  $('.get-this-lyric').on('click', function(e) {
      var inputArtist = $('.lyric-artist-name').text();
      var inputTrackName = $(this).prev().text();
      var getThisTrackLyric = $(this);
      var requestUrl = 'https://api.musixmatch.com/ws/1.1/matcher.lyrics.get?format=jsonp&callback=mycallback&q_track=' + inputTrackName + '&q_artist=' + inputArtist + '&apikey=' + API_KEY;
      $.ajax({
        url: requestUrl,
        dataType: "jsonp"
      })
      .done(function(data) {
        var lyric = data.message.body.lyrics.lyrics_body.replace(/\n/g, "<br>")
        getThisTrackLyric.append(lyric);
      })
      .fail(function() {
        alert('Something wrong occurred.');
      });
  });
});

