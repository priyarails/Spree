jQuery ->

  if $('#products').size() > 0
   $(window).on 'scroll', ->
       url = $('li.next_page a').attr('href')
       if url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
         $('li.next_page').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..."/>')
         $.getScript url
        return
      return


