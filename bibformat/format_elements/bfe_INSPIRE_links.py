# -*- coding: utf-8 -*-
##
## $Id$
##
## This file is part of CDS Invenio.
## Copyright (C) 2002, 2003, 2004, 2005, 2006, 2007 CERN.
##
## CDS Invenio is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of the
## License, or (at your option) any later version.
##
## CDS Invenio is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.  
##
## You should have received a copy of the GNU General Public License
## along with CDS Invenio; if not, write to the Free Software Foundation, Inc.,
## 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
""" BibFormat element - scans through all fields likely to create urls
(856, 773, etc) and creates and displys a list of those links.  Currently
does not include arXiv, nor does it use a kb for lookups of display names
or other similar information
"""

__revision__ = "$Id $"

import cgi
import re
from urllib import quote
from invenio.messages import gettext_set_language
from invenio.config import CFG_SITE_URL

def format(bfo, default='', separator='; ',style='', prefix='', suffix='', show_icons='no'):
    """ Creates html of links based on metadata
    @param separator (separates instances of links)
    @param prefix
    @param suffix
    @param show_icons default=no  
    @param style options CSS style for link
    """
    _ = gettext_set_language(bfo.lang)
    if style != "":
        style = 'class="'+style+'"'

    links=[]


    journals=bfo.fields('773')
    # trivially take care of dois
    for journal in journals:
        oa= bfo.kb('OALINKS',journal.get('n'),'').lower()
        if oa:
            final_style=style+' class="'+oa+'"'
        else:
            final_style=style
        if journal.get('a'):
            links.append('<a '+style+ 'href="http://dx.doi.org/'+journal.get('a')+\
                 '">Journal Server</a>')


    # could look for other publication info and calculate URls here

    
    # now look for explicit URLs
    # might want to check that we aren't repeating things from above... 
    urls = bfo.fields('8564_')
    links.extend(['<a '+ style + \
            'href="' + url.get("u") + '">' + _lookup_url_name(bfo,url.get('y')) +'</a>'
            for url in urls if url.get("u") and url.get('y').upper() != "DOI"])


  
        
    #put it all together
    if links:
        if show_icons.lower() == 'yes':
            img='<img style="border:none" src="%s/img/file-icon-text-12x16.gif" alt="%s"/>' % (CFG_SITE_URL, _("Download fulltext"))
            links=[img+link for link in links]
        return prefix+separator.join(links)+suffix
    else:
        return default

    


def _lookup_url_name(bfo,abbrev=''):
    # Could open a kb here, but for now just pass through
    if abbrev==None:
        abbrev=''
    return bfo.kb('WEBLINKS',abbrev,'Link to '+abbrev.lower())



def escape_values(bfo):
    """
    Called by BibFormat in order to check if output of this element
    should be escaped.
    """
    return 0


    
