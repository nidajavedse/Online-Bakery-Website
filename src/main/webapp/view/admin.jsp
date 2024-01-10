<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Admin Panel</title>
</head>

<body >




    <div class="side-menu" >
        <div class="brand-name">
            <h1></h1>
        </div>
        <ul>
            <li><a href="admin">DASHBOARD</a></li>
            <li><a href="admin#manageItem">MANAGE ITEMS</a></li>
            <li><a href="/viewOrders#order">VIEW ORDERS</a></li>
            <li><a href="/viewFeedbacks#feedback">VIEW FEEDBACK</a></li>
            <li><a href="index">LOG OUT</a></li>
        </ul>
    </div>
 
        <!-- Your content here -->
    
    <div class="container" >
        <div class="header" style="background-color: #fde5ea;">
            <div class="nav" style="background-color: #fde5ea;">
                <img src="images/logo.png" alt="">
               
                <div class="user">

                    <input type="checkbox" id="switch-mode" hidden>
                    <label for="switch-mode" class="switch-mode"></label>



                </div>
            </div>
        </div>
        
        <div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
                        <h1>Cake</h1>
                    </div>
                    <div class="icon-case">
                        <img src="images/cake.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>Cupcake</h1>
                    </div>
                    <div class="icon-case">
                        <img src="images/cupcake.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>Brownie </h1>
                    </div>
                    <div class="icon-case">
                        <img src="images/brownie.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>Dessert</h1>
                    </div>
                    <div class="icon-case">
                        <img src="images/dessert.png" alt="">
                    </div>
                </div>
            </div>
            <div id="manageItem">
            <div  class="content-2">
                <div class="recent-payments">
                    <div class="title">
                        <h2>Manage Items</h2>
                    </div>
                   <form action="saveProduct" method="post" enctype="multipart/form-data">
    <table id="manage">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Picture</th>
        </tr>
        <tr>
           <td><input type="text" name="id" pattern="[0-9]+" required title="Enter numbers only"/></td>
           <td><input type="text" name="name" pattern="[A-Za-z ]+" required title="Enter alphabets only"/></td>
          <td>
  <select name="category" required>
    <option value="">Select a category</option>
    <option value="Cake">Cake</option>
    <option value="Cupcake">Cupcake</option>
    <option value="Brownie">Brownie</option>
    <option value="Dessert">Dessert</option>
  </select>
  
</td>

           <td><input type="number" name="price" step="0.01" min="1" required /></td>
           <td><input type="file" name="picture" required /></td>
           <td><button style="float: right;" type="submit" class="btn">Add</button></td>

        </tr>
    </table>
    <h3 >${errorSavingMessage}</h3>
</form>
<form action="searchId">
 <table id="manage1">
<tr>
<td><input type="text" name="id" pattern="[0-9]+" required title="Enter numbers only"/></td>                           
<td><button style="float: right;" type="submit" class="btn">Search</button></td>
</tr>
</table>
</form>
<h3 >${searchIdMessage}</h3>
                    <form action="updateById" method="post" enctype="multipart/form-data">
                        <table id="manage">

                            <tr>
                            <td><input type="text" name="id" value="${pro.id}" pattern="[0-9]+" required title="Enter numbers only"/></td>
                                <td><input type="text" name="name" value="${pro.name}" pattern="[A-Za-z ]+" required title="Enter alphabets only"/></td>
                             <td>
  <select name="category" required>
    <option value="">Select a category</option>
    <option value="Cake" ${pro.category == 'Cake' ? 'selected' : ''}>Cake</option>
    <option value="Cupcake" ${pro.category == 'Cupcake' ? 'selected' : ''}>Cupcake</option>
    <option value="Brownie" ${pro.category == 'Brownie' ? 'selected' : ''}>Brownie</option>
    <option value="Dessert" ${pro.category == 'Dessert' ? 'selected' : ''}>Dessert</option>
  </select>
</td>
                                <td><input type="number" name="price" value="${pro.price}" step="0.01" min="1"  required /></td>
                                <td><input type="file" name="picture" accept=".png, .jpg, .jpeg" required/></td>
                                <td><button style="float: right;" type="submit" class="btn">Update</button></td>
                            </tr>
                        </table>
                    </form>
                    
 

                    <form action="deleteProduct">
                        <table id="manage1">

                            <tr>
                                <td><input type="text" name="id" pattern="[0-9]+" required title="Enter numbers only"/></td>
                                <td><button type="submit" class="btn">Delete</button></td>
                            </tr>
                        </table>
                    </form>

<h3 >${deleteMessage}</h3>
                 
    <form action="/searchById" >
        <table id="manage1">
            <tr>
                <td><input type="text" name="id" pattern="[0-9]+" required title="Enter numbers only"/></td>
                <td><button type="submit" class="btn">Display</button></td>
                
            </tr>
           
        </table>
    
 </form>   		
<div class="display-product">
<br>
<h3 >${searchMessage}</h3>
			<table>
			 <tr>
            <td></td>
            <td>
                <img src="/displayPicture?id=${p.id}"  />
            </td>
        </tr>
    <tr>
        <td><h4>ID:</h4></td>
        <td><p>${p.id}</p></td>
    </tr>
    <tr>
        <td><h4>Name:</h4></td>
        <td><p>${p.name}</p></td>
    </tr>
    <tr>
        <td><h4>Category:</h4></td>
        <td><p>${p.category}</p></td>
    </tr>
    <tr>
        <td><h4>Price:</h4></td>
        <td><p>${p.price}</p></td>
    </tr>
   
</table>

		</div>
                </div>



              
      
              
                <div id="order" class="recent-payments">
    <div id="orders" class="title">
        <h2>Orders</h2>
        
        
    </div>
   
   <form action="updateStatus" method="post">
    <table id="order">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Phone No</th>
            <th>Address</th>
            <th>City</th>
            <th>Special Instructions</th>
            <th>Grand Total</th>
            <th>Product</th>
            <th>Status</th>
        </tr>
        
        <c:forEach items="${orders}" var="order">
            <tr>
                <td>${order.id}</td>
                <td>${order.name}</td>
                <td>${order.phoneNo}</td>
                <td>${order.address}</td>
                <td>${order.city}</td>
                <td>${order.specialIns}</td>
                <td>${order.grandtotal}</td>
                <td>${order.productsname}</td>
               
              <td>
  <select name="status_${order.id}" >
    <option value="">Select a status</option>
    <option value="Pending" ${order.status == 'Pending' ? 'selected' : ''}>Pending</option>
    <option value="Confirmed" ${order.status == 'Confirmed' ? 'selected' : ''}>Confirmed</option>
    <option value="Processing" ${order.status == 'Processing' ? 'selected' : ''}>Processing</option>
    <option value="Out for delivery" ${order.status == 'Out for delivery' ? 'selected' : ''}>Out for delivery</option>
    <option value="Cancelled" ${order.status == 'Cancelled' ? 'selected' : ''}>Cancelled</option>
    <option value="Returned" ${order.status == 'Returned' ? 'selected' : ''}>Returned</option>
    <option value="Refunded" ${order.status == 'Refunded' ? 'selected' : ''}>Refunded</option>
  </select>
</td>

                <td>
                    <button type="submit" class="btn" name="update" value="${order.id}">Update</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

 <h3 >${orderMessage}</h3>
</div>
               
                
            
                <div id="feedback" class="recent-payments">
    <div id="feedback" class="title">
        <h2>Customer Feedbacks</h2>
        
        
    </div>
   <form action="viewFeedbacks">
  
    <table id="feedback">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Message</th>
           
        </tr>
        
        <c:forEach items="${feedbacks}" var="feedback">
            <tr>
                <td>${feedback.id}</td>
                <td>${feedback.name}</td>
                <td>${feedback.email}</td>
                <td>${feedback.phoneNo}</td>
                <td>${feedback.message}</td>
               
        </c:forEach>
    </table>

</form>
 <h3 >${feedbackMessage}</h3>
</div>    
                
            </div>
        </div>
        </div>
     
        
</body>

</html>
