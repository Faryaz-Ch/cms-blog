    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
    <div class="navbar-header">
  <a class="navbar-brand" href="index.php">
              <div class="col-xs-3"><img src="img/logo.png" alt="Logo" width="30px"></div>
              <div class="col-xs-9">CMS - Blogging</div>
          </a>
          </div>
  
<!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="index.php"><i class="fa fa-home"></i>
 Home</a></li>
           <li><a href="/cms/admin/login.php"><i class="fa fa-sign-in"></i>
 Admin Login</a></li>
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-list-alt"></i>
 Categories <span class="caret"></span></a>
              <ul class="dropdown-menu">
               <?php
                  $query = "SELECT * FROM categories ORDER BY id DESC"; //This Query will select all data of categories table from database. ORDER BY id will show latest on top.
                  $run = mysqli_query($con,$query); //To run query
                  //Following function will count any row in database
				  if(mysqli_num_rows($run) > 0){
                      while($row = mysqli_fetch_array($run)){
						  $category = ucfirst($row['category']); //Variable declared to fetch values from category row of table. ucfirst() will convert 1st character from lower to upper case.
						  $id = $row['id']; //Variable declared to fetch ids from category row of table.
						  echo "<li><a href='index.php?cat=".$id."'>$category</a></li>";
					  }
				  }
				   else{
                      echo "<li><a href='#'>No Categories Yet</a></li>";//If there is no Category.
                  }
				  ?>

              </ul>
            </li>
            
            <li><a href="contact-us.php"><i class="fa fa-phone"></i>
 Contact Us</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>