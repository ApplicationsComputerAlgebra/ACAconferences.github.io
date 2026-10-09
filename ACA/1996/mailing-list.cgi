#!/usr/local/bin/perl
# 
# ------------------------------------------------------------
# Form-mail.pl, by Reuven M. Lerner (reuven@the-tech.mit.edu).
#
# Last updated: March 14, 1994
#
# Form-mail provides a mechanism by which users of a World-
# Wide Web browser may submit comments to the webmasters
# (or anyone else) at a site.  It should be compatible with
# any CGI-compatible HTTP server.
# 
# Please read the README file that came with this distribution
# for further details.
# ------------------------------------------------------------

# ------------------------------------------------------------
# This package is Copyright 1994 by The Tech. 

# Form-mail is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation; either version 2, or (at your option) any
# later version.

# Form-mail is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Form-mail; see the file COPYING.  If not, write to the Free
# Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
# ------------------------------------------------------------

# Define fairly-constants

# This should match the mail program on your system.
$mailprog = '/usr/lib/sendmail';

# This should be set to the username or alias that runs your
# WWW server.
$recipient = 'listserv@risc.uni-linz.ac.at';
$listowner = 'rsalamon@risc.uni-linz.ac.at';

# Print out a content-type for HTTP/1.0 compatibility
print "Content-type: text/html\n\n";

# Print a title and initial heading
print "<Head><Title>Thank you</Title></Head>";
print "<Body><H1>Thank you</H1>";

# Get the input
read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});


# Split the name-value pairs
@pairs = split(/&/, $buffer);

foreach $pair (@pairs)
{
    ($name, $value) = split(/=/, $pair);

    # Un-Webify plus signs and %-encoding
    $value =~ tr/+/ /;
    $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;

    # Stop people from using subshells to execute commands
    # Not a big deal when using sendmail, but very important
    # when using UCB mail (aka mailx).
    # $value =~ s/~!/ ~!/g; 

    # Uncomment for debugging purposes
    # print "Setting $name to $value<P>";

    $FORM{$name} = $value;
      
}

# If the comments are blank, then give a "blank form" response
&blank_response unless $FORM{'username'};

# Now send mail to $recipient

open (MAIL, "|$mailprog $recipient") || die "Can't open $mailprog!\n";
print MAIL "From: $listowner\n";
print MAIL "Reply-to: $FORM{'username'} ($FORM{'realname'})\n";
print MAIL "system aca-l aca-list $FORM{'username'} #subscribe aca-l $FORM{'realname'}\n";
close (MAIL);

# Make the person feel good for writing to us
print "Thank you for joining the list aca-l@risc.uni-linz.ac.at<P>";
# print "Return to the  <A HREF=\"session-organizer.html\">previous</A> page.<P>";

# ------------------------------------------------------------
# subroutine blank_response
sub blank_response
{
    print "Your request appears to miss some information, and thus was not sent. <p>";
    print "Please re-enter the information.";
#     print " or return to the <A HREF=\"session-organizer.html\">previous</A> page, if you want.<P>";
    exit;
}
