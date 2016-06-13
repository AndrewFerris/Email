#Install required packages
install.packages("gmailr")
library(gmailr)

#Send an email
email <- mime(
  To = "INSERT EMAIL ADDRESS HERE",
  From = "ferris.andrewg@gmail.com",
  Subject = "Gmailr Test",
  body = "Trying to see if I can send emails via R, let me know on Tuesday if this works.
If it does then I'll see if I can actually do it from my amp account.")
send_message(email)

#Return message and thread ids from the inbox and sent folders
messages(num_results = , user_id = "ferris.andrewg@gmail.com")

#Read a specific message
message("INSERT MESSAGE ID HERE", user_id = "ferris.andrewg@gmail.com", format = "full")

#Read a bunch of messages
num_messages <- 10
message_list <- messages(num_results = num_messages, label_ids = "INBOX", user_id = "ferris.andrewg@gmail.com")
for (i in 1:num_messages){
  print(message(id = paste(message_list[[1]][[1]][[i]][1]), user_id = "ferris.andrewg@gmail.com", format = "full"))
}
