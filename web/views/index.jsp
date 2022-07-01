<%-- 
    Document   : index
    Created on : Jun 16, 2022, 3:16:48 PM
    Author     : DAVA
--%>

<%@page import="controller.ProductController"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Homepage" />
        </jsp:include>
    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        
        <%
            ProductController pc = new ProductController();

            String search = "";
            ResultSet rs;

            if (request.getParameter("search") != null) {
                search = request.getParameter("search");
            } 

            if (search.equals("")) {
                rs = pc.get();
            } else {
                rs = pc.getByName(search);
            }
        %>
        
        <!-- Begin page content -->
        <main class="flex-shrink-0">
            <div class="container">
                <h1 class="mt-5">Sticky footer with fixed navbar</h1>
                <p class="lead">Pin a footer to the bottom of the viewport in desktop browsers with this custom HTML and CSS. A fixed navbar has been added with <code class="small">padding-top: 60px;</code> on the <code class="small">main &gt; .container</code>.</p>
                <div class="row pt-5">
                    <div class="col-6">
                        <form action="Index" method="GET">
                            <div class="mb-3">
                                <label class="form-label">Search</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" name="search" value="<%= search%>" />
                                    <span class="input-group-append">
                                        <button class="input-group-text bg-light d-block">
                                            <i class='bx bxs-search'></i>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            <div class="row pt-5">
                <div class="col-12">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama Barang</th>
                                <th>Jenis Barang</th>
                                <th>Stok</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while(rs.next()) { %>
                            <tr>
                                <td><%= rs.getString("id") %></td>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("product_type") %></td>
                                <td><%= rs.getString("stock") %></td>
                                <td>
                                    <a href="#" class="btn btn-sm btn-info">Edit</a>
                                    <a href="#" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
          </div>
        </main>
        
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>
