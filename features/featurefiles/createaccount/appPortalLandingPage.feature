Feature: Validate Landing Page of the CAS Applicant Portal

    Background: Start The browser
       # Given i print text
       #|text|
       # |anisha|
       # |shetty|
       Given i activate programs
       |Value|
       |ACTIVATE_BUCOM_PROGRAMS|
        Given The browser is open
        

    Scenario Outline: Create Account
       And Open the 'BuCom' Applicant page '<device>'
        Given Create Account button is clicked
        When User Account is created
        Then Select an program in Add Program page and continue to DashBoard
        Then Validate DashBoard Page and print CASID
        Then Complete "Biographic Information" tile
        Then The browser is closed
          Examples:
              |device   |
              |desktop  |
            #  |mobile   |
            #  |tablet   |

   #Scenario Outline: Launch Applicant Portal And  Login
    #    And Open the 'BuCom' Applicant page '<device>'
     #   Given UserName and Password is provided
      #  When SignIn button is clicked
       # Then Validate DashBoard Page and print CASID
        #And SignOut from App Portal
        #Then The browser is closed
        #Examples:
         #    |device   |
          #   |desktop  |
           #  |mobile   |
            # |tablet   |