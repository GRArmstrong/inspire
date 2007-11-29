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
"""BibFormat element - Prints a custom field
"""
__revision__ = "$Id$"


from invenio.bibformat_utils import parse_tag
import sre

def format(bfo, tag, limit, instances_separator=" ",
           subfields_separator=" ", filter_subcode='', filter_value=''):
    """
    Prints the given field of a record.
    If tag is in range [001, 010], this element assumes
    that it accesses a control field. Else it considers it
    accesses a data field.

    @param tag the tag code of the field that is to be printed
    @param instances_separator a separator between instances of field
    @param subfields_separator a separator between subfields of an instance
    @param limit the maximum number of values to display.
    @param filter_subcode  if subcode exists will print tag
    @param filter_value  compares tag value (or value of filter_subcode) to regexp
    arg-prints val iff true 
    """
    # check if data or control field
    p_tag = parse_tag(tag)
    if p_tag[0].isdigit() and int(p_tag[0]) in range(0, 11):
        return  bfo.control_field(tag)
    elif p_tag[0].isdigit():
        #Get values without subcode. We will filter unneeded subcode later
        values = bfo.fields(p_tag[0]+p_tag[1]+p_tag[2])
    else:
        return ''
    
    out = ""
    
    if limit == "" or (not limit.isdigit()) or limit > len(values):
        limit = len(values)

    if len(values) > 0 and isinstance(values[0], dict):
        x = 0

        filtered_values=[]
        if filter_value:
            filter_re=sre.compile(filter_value)
        else:
            filter_re=sre.compile(r'.*')
        for instance in values:
            instance_good=''
            if filter:
                filter_subcode = filter_subcode or p_tag[3]
                for (subcode, value) in instance.iteritems():
                    if filter_subcode==subcode:
                        if filter_re.search(value):
                            instance_good=1
                            break
            if not instance_good:
                continue
            
            for (subcode, value) in instance.iteritems():
                if ( p_tag[3] == '' or p_tag[3] == '%' or
        p_tag[3]==subcode):
                    filtered_values.append(value)
                      
                
            filtered_values = [value for (subcode, value) in instance.iteritems()
                              if p_tag[3] == '' or p_tag[3] == '%' or p_tag[3] == subcode]
            if filtered_values:
                x += 1
            out += subfields_separator.join(filtered_values)
            if x >= limit:
                break
            
            # Print separator between non-empty instances, and if not last instance
            if x < len(values) and filtered_values:
                out += instances_separator

    else:
        out += subfields_separator.join(values[:int(limit)])
    
    return out





        
