import argparse
from behave import __main__ as RunnerFile

if __name__ == '__main__':
    ai_tag= '-t @ai_part'
    tag_one= '-t @invalidUsername'
    tag_two= '-t @invalidPassword'
    tag_three= '-t @validCredentials'
    #userInput = input('which scenario you want to run and if you want to run all scenarios type 0')
    ##if userInput == '1':
      #  RunnerFile.main([tag_one])
    ##if userInput == '2':
       # RunnerFile.main([tag_two])
    ##if userInput == '3':
      #  RunnerFile.main([tag_three])
    ##if userInput == '4':
      #  RunnerFile.main([ai_tag])
    ##if userInput == '0':
    RunnerFile.main()

