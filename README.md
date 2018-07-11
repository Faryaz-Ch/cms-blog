Category based content management system for multiple users with different permission levels to manage, publish, edit, or delete content or data dynamically from Admin Panel


Home page for my website is consist of the following
1. Navbar
Navbar of this website is consist of logo and Title for the website and Menus for Home page, Admin Login, Categories (drop down menu which will grab the categories from database).

2. Jumbotron
I have added Jumbotron below the Navbar as you can see in the screenshot given below; It has Title and Tag line of the website in big font size and a background image for calling extra attraction to the website.

3. Slider
I have added slider on Main page and it will grab 5 latest posts from the database for the slide show. (All slider data is coming from Database via php).

4. Sidebar
Sidebar is on the right-side on all pages of the website. It will show search box, Recent Posts, most popular posts based on the views, Categories Box and social media icons. (All data is coming from Database via php).

Blog Posts
Main page will show 3 latest posts as following
Date when post created, Tittle of the post, Author of the post, Author Image, Post feature Image, posts excerpt, Read More Button, Post Category and Comment count (If any).

Pagination
Pagination on every blog post page to help navigate to all pages e.g. Page 1, Page 2, Page 3 and so on.

Footer
Footer for all pages will be following. Year will auto change every Year via php set in footer coding.

Single Post Page
Single post page has Navbar, Jumbotron and Sidebar same like Home page as mentioned above but no Slider.

Post content
Date when post created, Tittle of the post, Author of the post, Author Image, Post feature Image, Full blog post content including any media such as images, audio, video, etc. Post Category Name and Comment count (If any). As show below.

Related Posts
I have added related posts box just below the post content on single blog post page as shown below. (all data is coming from database via php)

Author Bio Data
There is author bio data box below the related posts. This box will show who has created this blog post with his/her bio data. (all data is coming from database via php)

Comment Box
Comment box is just below the Author Bio Data box. If there is any comment posted on post it will show up here and below that reader can add his/her comment. (all data is coming from database via php).

Contact Us Page
Contact us page is consist of Navbar, Jumbotron, sidebar and footer similar to the Main and Single Post Page.

Location Map
Map for the location of the website added.

Admin Panel / Dashboard

Main Page
Administration panel or Dashboard is consist of Navbar, Sidebar, Statistics Overview and footer as shown below.

Add Post
Author can add new post by clicking on Add New button as shown above and new page will open as shown below where He/she can add title, post content including any type of media, posts tags, select category related to the post, post status and post feature image that he/she want to show on post and main page. As we can see text editor has been added in add post page which will help to format post content. This editor has been added via TinyMCE plugin that can be found on tinymce.com.

Edit Post
User with admin access can edit or delete blog posts. To delete He/she has to click on X icon opposite to the Post in the Del column. If admin want to edit a post by clicking on pencil icon a new page will open as shown below.

Edit or Delete Category
Admin can delete or rename any category by clicking Pencil or X icon opposite to the category name. If click on Pencil icon to rename or edit we will see another textbox as shown below.

Edit User Details
Admin can edit or delete users. Admin can delete user or author by clicking on X icon in Del Column as shown above. When admin click Pencil icon in Edit column a new page will open i.e. Edit User Details as shown below.

Plugins used in this project
1. https://getbootstrap.com/docs/3.3/getting-started for the accessing the bootstrap library.
2. http://jquery.com for accessing the jquery library.
3. http://fontawesome.io/icons for accessing the icons to give a good look and feel.
4. Source Code for the Navbar is taken from https://bootswatch.com/cerulean/
5. http://myprogrammingblog.com for jqBootstrapValidation.js and contact-form.js which is use to validate jQuery on contact us page.
6. Plugin for Text Editor for add new post is taken from tinymce.com
