
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>HIT APPLICATION | Customers</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/crm.css">
</head>

<body>

<div class="page-container">

    <!-- Page Header -->
    <header class="page-header">

        <div>
            <p class="eyebrow">HIT APPLICATION</p>

            <h1>Customer Management</h1>

            <p class="subtitle">
                Manage and maintain your customer information.
            </p>
        </div>

        <a href="${pageContext.request.contextPath}/showForm"
           class="btn btn-primary">

            <span class="plus">+</span>
            Add Customer

        </a>

    </header>


    <!-- Customer Information Card -->
    <main class="content-card">

        <div class="card-heading">

            <h2>Customer Information</h2>

            <p>View, update and manage customer records.</p>

        </div>


        <div class="table-scroll">

            <table class="customer-table">

                <thead>

                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>City</th>
                    <th>Actions</th>
                </tr>

                </thead>


                <tbody>

                <c:choose>

                    <c:when test="${not empty customer}">

                        <c:forEach var="cx" items="${customer}">

                            <tr>

                                <td>${cx.id}</td>

                                <td>${cx.firstName}</td>

                                <td>${cx.lastName}</td>

                                <td>${cx.city}</td>

                                <td class="action-buttons">

                                    <a class="btn btn-update"
                                       href="${pageContext.request.contextPath}/updateForm?cxid=${cx.id}">
                                        Update
                                    </a>

                                    <a class="btn btn-delete"
                                       href="${pageContext.request.contextPath}/deleteData?cxid=${cx.id}"
                                       onclick="return confirm('Are you sure you want to delete this customer?');">
                                        Delete
                                    </a>

                                </td>

                            </tr>

                        </c:forEach>

                    </c:when>


                    <c:otherwise>

                        <tr>
                            <td colspan="5" class="empty-state">
                                No customer records found.
                            </td>
                        </tr>

                    </c:otherwise>

                </c:choose>

                </tbody>

            </table>

        </div>

    </main>


    <!-- Footer -->
    <footer class="footer">

        <p>All Rights Reserved &copy; 2026</p>

        <p>
            Developed by <strong>Satyam Pandey</strong>
        </p>

        <a href="https://github.com/AboutSatyam"
           target="_blank"
           rel="noopener noreferrer">
            GitHub
        </a>

    </footer>

</div>

</body>
</html>
