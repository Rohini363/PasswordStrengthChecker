<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Password Strength Checker</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    String password = (String) request.getAttribute("password");
    String strength = (String) request.getAttribute("strength");

    String strengthClass = "";
    if (strength != null) {
        switch (strength) {
            case "Very Weak": strengthClass = "very-weak"; break;
            case "Weak": strengthClass = "weak"; break;
            case "Moderate": strengthClass = "moderate"; break;
            case "Strong": strengthClass = "strong"; break;
            case "Very Strong": strengthClass = "very-strong"; break;
        }
    }
%>
    <div class="container">
    <h2>Password Strength Checker</h2>
    <form>
        <input type="password" id="password" placeholder="Enter your password" required>
        <div class="result">
            <p><strong>Password:</strong> <span id="displayPassword"></span></p>
            <p class="strength-label" id="strengthText"></p>
            <div class="strength-bar" id="strengthBar"></div>
        </div>
    </form>
</div>


    <% if (password != null && strength != null) { %>
        <div class="result">
            <p><strong>Password:</strong> <%= password %></p>
            <p class="strength-label <%= strengthClass %>">
                <strong>Strength:</strong> <%= strength %>
            </p>
            <div class="strength-bar <%= strengthClass %>"></div>
        </div>
    <% } %>
</div>

<script>
    const passwordInput = document.getElementById("password");
    const displayPassword = document.getElementById("displayPassword");
    const strengthText = document.getElementById("strengthText");
    const strengthBar = document.getElementById("strengthBar");

    passwordInput.addEventListener("input", () => {
        const password = passwordInput.value;
        displayPassword.textContent = password;

        let score = 0;

        if (password.length >= 8) score++;
        if (/[A-Z]/.test(password)) score++;
        if (/[a-z]/.test(password)) score++;
        if (/\d/.test(password)) score++;
        if (/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/.test(password)) score++;

        let strength = "";
        let width = "0%";
        let color = "";

        switch (score) {
            case 5:
                strength = "Very Strong";
                width = "100%";
                color = "#28a745";
                break;
            case 4:
                strength = "Strong";
                width = "80%";
                color = "#2ecc71";
                break;
            case 3:
                strength = "Moderate";
                width = "60%";
                color = "#3498db";
                break;
            case 2:
                strength = "Weak";
                width = "40%";
                color = "#f39c12";
                break;
            default:
                strength = "Very Weak";
                width = "20%";
                color = "#e74c3c";
        }

        strengthText.textContent = `Strength: ${strength}`;
        strengthText.style.color = color;
        strengthBar.style.width = width;
        strengthBar.style.backgroundColor = color;
    });
</script>

</body>
</html>
