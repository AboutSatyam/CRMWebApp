
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>HIT APPLICATION | Update Customer</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/crm.css">
</head>

<body>

<div class="page-container form-container">

    <!-- Page Header -->
    <header class="page-header">

        <div>
            <p class="eyebrow">HIT APPLICATION</p>

            <h1>Update Customer</h1>

            <p class="subtitle">
                Modify the selected customer's information.
            </p>
        </div>

        <a href="${pageContext.request.contextPath}/cxinfo"
           class="btn btn-secondary">
            Back to Customers
        </a>

    </header>


    <!-- Update Form -->
    <main class="form-card">

        <form action="${pageContext.request.contextPath}/updateCustomer"
              method="post">

            <!-- Existing Customer ID -->
            <input type="hidden"
                   name="id"
                   value="${customer.id}">


            <div class="form-group">

                <label for="firstName">First Name</label>

                <input type="text"
                       id="firstName"
                       name="firstName"
                       value="${customer.firstName}"
                       maxlength="100"
                       required>

            </div>


            <div class="form-group">

                <label for="lastName">Last Name</label>

                <input type="text"
                       id="lastName"
                       name="lastName"
                       value="${customer.lastName}"
                       maxlength="100"
                       required>

            </div>


            <div class="form-group">

                <label for="city">City</label>

                <input type="text"
                       id="city"
                       name="city"
                       value="${customer.city}"
                       maxlength="100"
                       required>

            </div>


            <div class="form-actions">

                <button type="submit" class="btn btn-primary">
                    Update Customer
                </button>

                <a href="${pageContext.request.contextPath}/cxinfo"
                   class="btn btn-light">
                    Cancel
                </a>

            </div>

        </form>

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
