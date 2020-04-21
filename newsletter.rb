require 'pry'


require "pry"
CAMPUS = {
  "name": "DC",
  "address": "1440 G St NW, Washington, DC 20005",
}
DATE = "Nov 20, 2019"

SUBSCRIBERS = ["rhona@grimes.info", "cedricschmidt@robel.io", "edmond@ko.org", "bryant@cummingsfisher.biz", "alverta@bernhard.name"]
UNSUBSCRIBED = ["cedricschmidt@robel.io", "alverta@bernhard.name"]

ARTICLES = [
  {"author": "Destiny Blanda Bruen II", "title": "Mining", "text": "The orthogonal features, when combined, can explode into complexity."},
  {"author": "Robin Flatley Hilpert", "title": "Retail", "text": "In our daily lives as programmers, we process text strings a lot. So I tried to work hard on text processing, namely the string class and regular expressions. Regular expressions are built into the language and are very tuned up for use."},
  {"author": "Olevia Torphy Kuvalis", "title": "Technology", "text": "Imagine you are writing an email. You are in front of the computer. You are operating the computer, clicking a mouse and typing on a keyboard, but the message will be sent to a human over the internet. So you are working before the computer, but with a human behind the computer."},
  {"author": "Dr. Crystle Kovacek Denesik", "title": "Legal", "text": "Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer."},
  {"author": "Alfred Jast Hermann", "title": "Real-Estate", "text": "I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python."},
  {"author": "Michale Bruen Boehm", "title": "Consulting", "text": "Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only."},
  {"author": "Tony Keeling Cartwright", "title": "Design", "text": "Often people, especially computer engineers, focus on the machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines."},
]


def calculate_recipients
  new_array = SUBSCRIBERS - UNSUBSCRIBED
  return new_array
end

def first_n_articles(number_of_articles)
  ARTICLES.select do 
    ARTICLES[0..number_of_articles - 1]
  end
end

def print_recipients
  recipients = calculate_recipients.join(", ")
  print recipients
end

def print_one_article(article)
  ARTICLES.find do |hash|
    new_string = hash[:title] + "\n" + "By: " + hash[:author] + "\n" + hash[:text] + "\n\n"
    print new_string
  end
end

def print_many_articles(articles)
  print_one_article(articles)
end

def format_campus_location(campus)
  "Flatiron #{campus[:name]}"
end

def format_subject
  puts "#{format_campus_location(CAMPUS)} Newsletter - #{DATE}\n\n"
end

def format_footer(campus)
  "Flatiron Newsletter · #{campus[:name]} · #{campus[:address]} "
end

def print_newsletter(number)
  puts "Generating this week's newsletter...\n\n"

  print "SUBJECT: "
  format_subject

  print "RECIPIENTS: "
  print_recipients

  puts "\n \nBODY:"
  format_subject
  articles = first_n_articles(number)
  print_many_articles(articles)
  puts format_footer(CAMPUS)

end

def run
  print_newsletter(3)
end

run
# Couldn't figure out why it wasn't only printing the first 3 :(