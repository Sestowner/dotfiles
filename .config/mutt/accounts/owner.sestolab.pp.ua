set folder = "imaps://owner@sestolab.pp.ua@imap.sestolab.pp.ua:993"
set smtp_url = "smtps://owner@sestolab.pp.ua@smtp.sestolab.pp.ua:465"

set smtp_pass = `pass show mutt/owner.sestolab.pp.ua`
set imap_pass = `pass show mutt/owner.sestolab.pp.ua`

set from = "owner@sestolab.pp.ua"
set realname = "Sergiy Stupar"
set signature = "~/.config/mutt/signature"

set spoolfile = "+Inbox"
set record = "+Sent"
set trash = "+Trash"
set postponed = "+Drafts"

mailboxes -label Sestowner +INBOX # Specify an alternative label to print in the sidebar or mailbox browser instead of the mailbox path


# vim: filetype=muttrc

