jQuery ->

  if $('.pagination').size() > 0
   $(window).on 'scroll', ->
       url = $('li.next_page a').attr('href')
       if url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
         $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..."/>')
         $.getScript url
        return
      return


