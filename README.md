<!-- E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs. -->
# README

# Product Shop?

## Description

#### _**This site is designed for a product distributer, allowing them to display their products and have customers submit reviews on individual products**_

#### _**By Tyler Stephenson, July 14, 2017**_

### Setup/Installation Requirements
* clone <link to repo>
* cd <local repo>
* run this series of commands:
  * `$ bundle install`
  * `rake db:setup`
  * `$ rails s`
* navigate to localhost:3000 in your prefered web browser.

## Planning

<!-- 1. Specs
  * Use Bootstrap for base styling.
  * user model.
      * name - string
      * email - string
      * password_hash - string
      * password_salt - string
      * admin - boolean
      * timestamps
  * user validations.
    * presence and uniqueness of email

  * product model.
      * name - string
      * cost - number
      * origin - string
      * description - string
      * timestamps
  * product validations.
    * presence of name
    * presence of cost
    * presence of origin
  * product relationships
    * has many reviews

  * review model.
      * author - string
      * body - string
      * product_id - integer
      * timestamps
  * review validations.
    * presence of author
    * presence of body
  * review relationships
    * belongs to product

  * seeding using Faker
    * 50 products
    * 250 reviews -->

2. User Stories

  * Base Ajax
    * Users can add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
    * Users can click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.
    * Users can remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

  * Refactor and additional features
    * Implemented
      * Add Paperclip for product image upload.
      * Add further AJAX functionality where it might be useful.

    * Not yet Implemented
      * Ensure that users can't order a negative number of items.
      * Add flash messages for signing up, signing in and signing out.
      * Add product update and delete functionality for admins.
      * Add admin flash messages for adding, updating and deleting products.
      * Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
      * Add product validations.
      * Add Stripe so users can pay when finalizing orders.
      * Add password validations to ensure a user's password is sufficiently complex.
      * Add admin links to navbar so admins can easily add, update and delete products.
      * Fix the row height for products, which can quickly become uneven.
      * Add integration testing for AJAX functionality.

4. UX/UI
  * Include and modify bootstrap/materialize/Sass etc.
  * Develop custom style

5. Polish
  * Refactor
  * Make README awesome

### Known Bugs
No known bugs at this time.

## Support and Contact details
* Tyler Stephenson
* ilduchea@gmail.com

### Technologies Used

* Ruby
* Rails
* HTML5
* CSS
* Bootstrap
* jQuery
* bcrypt
* materialize

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **Tyler Stephenson**
