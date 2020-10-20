# README
Instructions:
1. Clone down repository to your computer.

2. Open up the application and run a bundle install.

3. Run yarn install --check-files, if prompted.

4. Run rails db:migrate and rails db:seed consecutively.
 - *Tip* To view a new selection of articles, run 'rails db:seed' again.

5. Start the server with "rails s".

6. Navigate to the home page by typing the following in the browser: http://localhost:3000/news_articles

7. Navigate to any article from the home page. On each show page, you'll be able to see more information for each article.
 - A direct url is provided to the complete article.

8. Once views run out, user must pay a $5 fee.
 - If new user, user must sign-up for an account
 - If returning user, user must sign-in
    - If user is logged in, user only needs to pay $5 to continue viewing articles.

9. Once logged in, user can add articles to their favorites list by clicking "Add Article to Favorites" on the navigation bar.
 - After being directed to the "Add Article to Favorites" page, select an article with the drop down menu.
 - Click "Add Article" button to add the article.
    - User will be redirected to user's home page.

10. If a user wants to remove an article from their favorites list, simply click the "X" underneath the specific article. 

11. Return to the home page by clicking "News Home", on the navigation bar, to continue viewing articles. 


![image](https://user-images.githubusercontent.com/67060678/90936101-8c9da380-e3d2-11ea-925d-c19e9feca855.png)



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
