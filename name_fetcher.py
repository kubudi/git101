import os

attendeesList = open("README.md", 'w')

attendeesList.truncate()

attendeesList.write("Attendees:\n")
attendeesList.write("==========\n\n")

for root, dirs, files in os.walk("attendees"):
  for file in files:
    name = file.split(".")[0].replace("_", " ")
    attendeesList.write("* " + name)
    attendeesList.write("\n")
