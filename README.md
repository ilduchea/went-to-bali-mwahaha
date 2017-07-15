<!-- E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs. -->
# README

# Product Shop?

## Description

#### _**This site is designed for a product distributer, allowing them to display their products and have customers add products to a cart.**_

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

1. User Stories

  * Base Ajax
    * Users can add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
    * Users can click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.
    * Users can remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

  * Refactor and additional features
    * Implemented
      * Add Paperclip for product image upload.
      * Add further AJAX functionality where it might be useful.
      * Fix the row height for products, which can quickly become uneven.
      * Ensure that users can't order a negative number of items.
      * Add flash messages for signing up, signing in and signing out.
      * Add product validations.
      * Allow other than whole dollar amounts for admin product creation (for instance, 3.99).

    * Not yet Implemented
      * Add product update and delete functionality for admins.
      * Add admin flash messages for adding, updating and deleting products.
      * Add Stripe so users can pay when finalizing orders.
      * Add password validations to ensure a user's password is sufficiently complex.
      * Add admin links to navbar so admins can easily add, update and delete products.
      * Add integration testing for AJAX functionality.

2. UX/UI
  * Include and modify bootstrap/materialize/Sass etc.
  * Develop custom style

3. Polish
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
* jQuery
* bcrypt
* materialize

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **Tyler Stephenson**
