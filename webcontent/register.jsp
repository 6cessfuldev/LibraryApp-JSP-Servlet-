<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.Date" %>
<!DOCTYPE html>
<!-- saved from url=(0053)https://getbootstrap.com/docs/4.0/examples/dashboard/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://getbootstrap.com/docs/4.0/assets/img/favicons/favicon.ico">

    <title>registerPage</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/dashboard/">

    <!-- Bootstrap core CSS -->
    <link href="./Dashboard Template for Bootstrap_files/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./Dashboard Template for Bootstrap_files/dashboard.css" rel="stylesheet">
    
  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="admin.html">YUK Library</a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Sign out</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="Admin">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                  Dashboard <span class="sr-only">(current)</span>
                </a>
              </li>
              <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                <span>Book</span>
              </h6>
              <li class="nav-item">
                <a class="nav-link">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path><polyline points="13 2 13 9 20 9"></polyline></svg>
                  Register
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-cart"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
                  Modify
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                  Remove
                </a>
              </li>
            </ul>

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Memebership</span>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                  Search
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                  Resign
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                  Activity
                </a>
              </li>
            </ul>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
         
         <div class="col-md-8 order-md-1">
	      <h4 class="mb-3">Register Book</h4>
	      
	      <form class="needs-validation" novalidate="">
	        <div class="row">
	          <div class="col-md-6 mb-3">
	            <label for="bookname">Book Name</label>
	            <input type="text" class="form-control" id="bookname" placeholder="" value="" required="">
	            <div class="invalid-feedback">
	              Valid first name is required.
	            </div>
	          </div>
	        </div>
	
	        <div class="mb-3">
	          <label for="authorname">Author Name</label>
	          <input type="text" class="form-control" id="address" placeholder="" required="">
	          <div class="invalid-feedback">
	            Please enter your shipping address.
	          </div>
	        </div>
	
	        <div class="mb-3">
	          <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
	          <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
	        </div>
	
	        <div class="row">
	          <div class="col-md-5 mb-3">
	            <label for="country">Country</label>
	            <select class="custom-select d-block w-100" id="country" required="">
	              <option value="">Choose...</option>
	              <option>United States</option>
	            </select>
	            <div class="invalid-feedback">
	              Please select a valid country.
	            </div>
	          </div>
	          <div class="col-md-4 mb-3">
	            <label for="state">State</label>
	            <select class="custom-select d-block w-100" id="state" required="">
	              <option value="">Choose...</option>
	              <option>California</option>
	            </select>
	            <div class="invalid-feedback">
	              Please provide a valid state.
	            </div>
	          </div>
	          <div class="col-md-3 mb-3">
	            <label for="zip">Zip</label>
	            <input type="text" class="form-control" id="zip" placeholder="" required="">
	            <div class="invalid-feedback">
	              Zip code required.
	            </div>
	          </div>
	        </div>
	        <hr class="mb-4">
	        <div class="custom-control custom-checkbox">
	          <input type="checkbox" class="custom-control-input" id="same-address">
	          <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
	        </div>
	        <div class="custom-control custom-checkbox">
	          <input type="checkbox" class="custom-control-input" id="save-info">
	          <label class="custom-control-label" for="save-info">Save this information for next time</label>
	        </div>
	        <hr class="mb-4">
	
	        <h4 class="mb-3">Payment</h4>
	
	        <div class="d-block my-3">
	          <div class="custom-control custom-radio">
	            <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked="" required="">
	            <label class="custom-control-label" for="credit">Credit card</label>
	          </div>
	          <div class="custom-control custom-radio">
	            <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required="">
	            <label class="custom-control-label" for="debit">Debit card</label>
	          </div>
	          <div class="custom-control custom-radio">
	            <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required="">
	            <label class="custom-control-label" for="paypal">PayPal</label>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-md-6 mb-3">
	            <label for="cc-name">Name on card</label>
	            <input type="text" class="form-control" id="cc-name" placeholder="" required="">
	            <small class="text-muted">Full name as displayed on card</small>
	            <div class="invalid-feedback">
	              Name on card is required
	            </div>
	          </div>
	          <div class="col-md-6 mb-3">
	            <label for="cc-number">Credit card number</label>
	            <input type="text" class="form-control" id="cc-number" placeholder="" required="">
	            <div class="invalid-feedback">
	              Credit card number is required
	            </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-md-3 mb-3">
	            <label for="cc-expiration">Expiration</label>
	            <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
	            <div class="invalid-feedback">
	              Expiration date required
	            </div>
	          </div>
	          <div class="col-md-3 mb-3">
	            <label for="cc-cvv">CVV</label>
	            <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
	            <div class="invalid-feedback">
	              Security code required
	            </div>
	          </div>
	        </div>
	        <hr class="mb-4">
	        <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to checkout</button>
	      </form>
    </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
  </footer>
         
         
        </main>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./Dashboard Template for Bootstrap_files/jquery-3.2.1.slim.min.js.다운로드" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="./Dashboard Template for Bootstrap_files/popper.min.js.다운로드"></script>
    <script src="./Dashboard Template for Bootstrap_files/bootstrap.min.js.다운로드"></script>

    <!-- Icons -->
    <script>
      feather.replace()
    </script>
  

</body></html>