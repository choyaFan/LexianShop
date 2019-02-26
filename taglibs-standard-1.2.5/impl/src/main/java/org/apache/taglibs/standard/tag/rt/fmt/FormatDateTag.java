/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.taglibs.standard.tag.rt.fmt;

import org.apache.taglibs.standard.tag.common.fmt.FormatDateSupport;

import javax.servlet.jsp.JspTagException;
import java.util.Date;

/**
 * <p>A handler for &lt;formatDate&gt; that supports rtexprvalue-based
 * attributes.</p>
 *
 * @author Jan Luehe
 */

public class FormatDateTag extends FormatDateSupport {

    //*********************************************************************
    // Accessor methods

    // 'value' attribute

    public void setValue(Date value) throws JspTagException {
        this.value = value;
    }

    // 'type' attribute

    public void setType(String type) throws JspTagException {
        this.type = type;
    }

    // 'dateStyle' attribute

    public void setDateStyle(String dateStyle) throws JspTagException {
        this.dateStyle = dateStyle;
    }

    // 'timeStyle' attribute

    public void setTimeStyle(String timeStyle) throws JspTagException {
        this.timeStyle = timeStyle;
    }

    // 'pattern' attribute

    public void setPattern(String pattern) throws JspTagException {
        this.pattern = pattern;
    }

    // 'timeZone' attribute

    public void setTimeZone(Object timeZone) throws JspTagException {
        this.timeZone = timeZone;
    }
}
