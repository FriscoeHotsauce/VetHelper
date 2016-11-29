# VetMed Spring Boot Application

## Download Intellij Ultimate Edition
The ultimate edition is free for students

## Clone the repository
File -> New -> Project from Version Control
    Select github, follow the project creation wizard
## Setup the maven configuration
This will let you run the project. Click on the  V  looking icon on the top right of Intellij
- Select edit configurations
- Click the green + in the top left
- Select maven
- under command line, type: spring-boot:run
- Give the configuration a name
- Press the Play button, and an apache server will be built and running on port 8080

## If you get a sdk error
Click the angry red text "configure" 
- Select the java JDK if you can
- Otherwise, select "new"
- If it DOES automatically find your java JDK, just press ok
- If it DOES NOT automatically find your java jdk, navigate to the root directory and press OK
- If you don't have Java 1.8 installed, do that

## Access the application
- In your web browser, hit the url localhost:8080/home/page (Should display hello world)

## Creating a page
- In order to serve the html page, a controller method must be present
- You can create your own controllers, they should be separated by feature
- Simply annotate the class with @Controller to serve JSPs. Use @RestController to serve json and other data (use for
exposing rest end-points to save data to the database and such)
- Create the JSP. You can do this in IntelliJ with right click->new->JSP
- In order for the JSP to be loaded onto the apache server, it must be located in the webapp/WEB-INF/jsp package
- The system is configured such that all you need to do is return the name of the JSP (don't need the extension) from a
class annotated with @Controller and it will resolve to the JSP.

## Setting up the MySQL database
Install MySQL
- Go to [the MySQL downloads page](http://dev.mysql.com/downloads) and download MySQL Community Server
- Start the intallation. In the Type and Networking tab, enter 3306 in Port Number
- In the Accounts and Roles tab, enter vethelper for MySQL RootPassword.
- In the Windows Service tab, enter vethelper for Windows Service Name.
- Finsh  the installation with defaults

Create a connection
- Open MySql workbench and add a connection. Name the connection vethelper.
- Double click on the connection to open up a tab for it. 
- One the left side of the screen under "SCHEMAS", right click in a blank area and click create schema.
- Name the schema vethelper
- Use the shell or however means you prefer to configure the database. 

Current tables:
patients: name varchar(255), owner varchar(255), MMR int(255)
