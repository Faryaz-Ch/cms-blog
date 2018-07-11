<?php require_once('inc/top.php');?>
  </head>
  <body>
   <?php require_once('inc/header.php');?>
<div class="jumbotron">
  <div class="container">
    <div id="details" class="animated fadeInLeft">
      <h1>Contact <span>Us</span></h1>
      <p>Feel free to contact us.</p>
    </div>
  </div>
  <img src="img/top-image.jpg" alt="Top Image"> </div>
<section>
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <div class="row">
          <div class="col-md-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.005154121602!2d175.27656231531807!3d-37.78991897975665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d6d18af6a8d4ee3%3A0x8fa5a1f0b304c99b!2sWintec!5e0!3m2!1sen!2snz!4v1503636647763" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
          </div>
          <div class="col-md-12 contact-form">
            <h2>Contact Us</h2>
            <br>
            <form name="sentMessage"  id="contactForm"  novalidate><!--The novalidate attribute is a boolean attribute. When present, it specifies that the form-data (input) should not be validated when submitted-->
              <div class="control-group">
                <div class="controls">
                 <!--data-validation-* classes are used to specify custom message when user does something incorrectly. e.g. if there is a “required” attribute, it automatically will put error message if the field is empty.-->
                  <input type="text" class="form-control" 
			   	   placeholder="Full Name" id="name" required
			           data-validation-required-message="Please enter your name" />
                  <p class="help-block"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <input type="email" class="form-control" placeholder="Email" 
			   	            id="email" required
			   		   data-validation-required-message="Please enter your email" />
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <input type="url" class="form-control" placeholder="Website (Optional)" 
			   	            id="website" />
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <textarea rows="10" cols="30" class="form-control" 
                       placeholder="Message" id="message" required
		       data-validation-required-message="Please enter your message" minlength="5" 
                       data-validation-minlength-message="Min 5 characters" 
                        maxlength="999" style="resize:none"></textarea>
                </div>
              </div>
              <div id="success"> </div>
              <!-- For success/fail messages -->
              <button type="submit" class="btn btn-primary">Send</button>
              <br />
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <?php require_once('inc/sidebar.php');?>
      </div>
    </div>
  </div>
</section>
<?php require_once('inc/footer.php');?>
