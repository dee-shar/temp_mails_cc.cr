# temp_mails_cc.cr
Web-API for www.tempmails.cc an secure and anonymous temporary email solution

## Example
```cr
require "./temp_mails_cc"

temp_mails = TempMailsCc.new
email = temp_mails.generate_email()
puts email
```
