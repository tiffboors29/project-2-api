# Nesto Guitar Service
Project #2

This backend was built for Nesto Guitar Service, a website that details a local luthier's services and allows customers to track the status of their work orders. The code for the backend is Ruby on Rails and uses a SQL database to create, read, update and delete data. The backend currently handles the creation, and login of users and admin users as well as the jobs or work orders. The website serves the purpose of allowing users to track the work orders that Nesto Guitar Service provides. For this purpose, a jobs model holds all information related to the user's work order. While the user is given permission to view their work orders, only admins are able to create, update and delete orders. Similarly, admins can see all open work orders while users can only see their own work orders.


## Database creation

In order to complete the requirements of order tracking, I created a user model and a job model. The user model included given_name, surname, email, token and a password that was secured using password digest. The job model included a title, description, cost, status, and reference to the user_id who requested the work order.


## Deployment

I deployed this backend app on Heroku. The backend interacts with the frontend which runs on Github GH-Pages.

The frontend repo of this application gan be found at: [Nesto Guitar Services Frontend](https://github.com/tiffboors29/project-2-frontend)



## Plans for Improvement

I intend to continue building out the backend of this site so that it can handle ecommerce in addition to the order tracking feature I've already implemented. I plan to build out a products model with a shopping cart and the neccessary order methods to carry out purchases so that users can purchase guitars and make orders for custom instruments through the application.


## Check Out My Site!

Check out my site [here](http://tiffanyboorsma.com/project-2-frontend/)
You can register or login to review work orders on the services > my work orders page. Without administrative functions, however, you will not be able to create, update or delete orders.
To get a feel for the site and the admin capabilities, feel free to sign in with
* email: admin@nestoguitars.com
* password: nestoadmin

Logged in as this admin on the my-work-orders page, you will be able to view all orders when you click 'Review Orders' and then click 'Show All'. You will also be able to edit orders by their id number if you click 'Edit Orders'.

To view order as a regular customer or user, login with
* email: guest@nestoguitars.com
* password: nestoguest

Logged in as this guest on the my-work-orders page, you will be able to view only orders associated with this guest customer when you click 'Review Orders' and then click 'Show All'. You will also not be able to edit, create or delete orders because you do not have admin permissions.

