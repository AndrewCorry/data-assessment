log_file = open("um-server-01.txt") #allows the um-server-01.txt file to be accessed using the log_file variable


def sales_reports(log_file): #makes a function called sales reports
    for line in log_file: #loops through each line in log_file
        line = line.rstrip() #removes white space in each line
        day = line[0:3] #day is the first 3 letters of the line
        if day == "Mon":
            print(line)#prints every line that is timestamped on a Monday


sales_reports(log_file) #runs the function sales_report using the um-server-01.txt file
