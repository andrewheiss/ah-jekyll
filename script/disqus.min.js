/**
 * jQuery Disqus Plugin
 * ====================
 *
 * Rev: 1.1.2.5
 *
 * Copyright (c) 2009 Rob Loach (http://robloach.net)
 * Dual licensed under the MIT (MIT-LICENSE.txt)
 * and GPL (GPL-LICENSE.txt) licenses.
 */

(function(jQuery){jQuery.fn.disqus=function(options){var options=jQuery.extend({domain:'',title:'',message:'',url:window.location.href,developer:0},options);window.disqus_no_style=true;disqus_developer=options.developer;disqus_container_id=this.attr('id');disqus_url=options.url;disqus_title=options.title;disqus_message=options.message;this.empty();jQuery.ajax({type:'GET',url:'http://disqus.com/forums/'+options.domain+'/embed.js',dataType:'script',cache:true});};jQuery.disqusLinks=function(domain){var query='?';jQuery("a[href$='#disqus_thread']").each(function(i){query+='url'+i+'='+encodeURIComponent($(this).attr('href'))+'&';});if(query.length>2){jQuery.ajax({type:'GET',url:'http://disqus.com/forums/'+domain+'/get_num_replies.js'+query,dataType:'script',cache:true});}};})(jQuery);
