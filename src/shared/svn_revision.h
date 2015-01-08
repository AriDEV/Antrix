// $Id: svn_revision.h 1461 2007-09-09 12:31:17Z Burlex $

#ifndef _SVN_REVISION_H
#define _SVN_REVISION_H

static const char * REVISION_TEXT = "$Rev: 1461 $";

inline int g_getRevision()
{
	const char * p = REVISION_TEXT + 6;
	return atoi(p);
}

////////////////
#endif