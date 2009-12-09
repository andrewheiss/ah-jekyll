---
layout: post
title: Syntax highlighting test
---

Does this work?

{% highlight php %}

<?php
	echo "This is a test";
?>

{% endhighlight %}

{% highlight latex %}
\usepackage{fontspec}		% provides font selecting commands 
\usepackage{xunicode}		% provides unicode character macros 
\usepackage{xltxtra}		% provides some fixes/extras

\title{A LaTeX Article}
\author{Andrew Heiss}

\date{2009-10-08}

\begin{document}

\maketitle

\section{Introduction}

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \emph{minim} veniam, quis nostrud exercitation ullamco laboris nisi ut \textbf{aliquip} ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
{% endhighlight %}

{% highlight ruby %}
def foo
  puts 'foo'
end
{% endhighlight %}

{% highlight yaml %}
destination:    ./_site
auto:           true
lsi:            false
server:         true
server_port:    4000
pygments:       true
markdown:       maruku
permalink:      pretty
{% endhighlight %}

{% highlight css %}
.content p, .content ul, .content ol {
	font-size: 1.2em;
	line-height: 1.5em;
	padding-bottom: .8em;
}

.content h2 {
	font-size: 1.5em;
	line-height: 1.5em;
}

.footnotes {
	font-size: .7em;
	color: #999999;
}
{% endhighlight %}

{% highlight sql %}
CREATE TABLE `PDF_Loans` (
`id` int(4) NOT NULL auto_increment primary key,
`FirstName` varchar(65) NOT NULL default '',
`LastName` varchar(65) NOT NULL default '',
`EMail` varchar(65) NOT NULL default '',
) TYPE=MyISAM AUTO_INCREMENT=0 ;
{% endhighlight %}

{% highlight perl %}
#------------------------------------
#
#	Sub name: pseudoTimestamp
#	Purpose: Remove all punctuation from Blogger's timestamp - used for sorting entries chronologically
#	Incoming parameter: Blogger's Atom timestamp - 2009-04-10T18:51:04.696+02:00
#	Returns: $date - Timestamp without punctuation - 20090410185104
#
#------------------------------------

sub pseudoTimestamp {
    my $date = $_[0];
    $date = join "", $date =~ m!\A(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}).*!;
    return $date;
}
{% endhighlight %}