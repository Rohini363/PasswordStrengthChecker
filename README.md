# 🔒 Password Strength Checker Web Application

A sleek and interactive **Java Servlet-based web application** to evaluate the strength of user passwords. Designed with a responsive UI using JSP, CSS, and Java Servlets (Jakarta EE), this app provides real-time and server-side password strength feedback in the browser.

---

## 🚀 Features

- Real-time **client-side password strength meter** with color-coded progress bar.  
- **Server-side password strength evaluation** using Java Servlet.  
- Password strength based on length, uppercase, lowercase, digits, and special characters.  
- Responsive and modern UI styled with CSS.  
- Supports both GET (redirect) and POST (form submission) requests.  
- Easily deployable on any Jakarta EE servlet container.

---

## 🛠️ Requirements

- **Java JDK** 11 or higher  
- **Apache Tomcat** 10.x (Jakarta EE 9+ compatible)  
- **Eclipse IDE** or any Java IDE supporting Dynamic Web Projects  
- **Jakarta Servlet API** version 6.0.0  
- Modern **Web Browser** for UI interaction  

---

## 📁 Project Structure

PasswordStrengthChecker/

├── `.classpath`  
├── `.project`  
├── `.settings/`  
│   └── `org.eclipse.jdt.core.prefs`  
├── `src/`  
│   └── `com/`  
│       └── `example/`  
│           └── `PasswordStrengthServlet.java`  
├── `Webapp/`  
│   ├── `index.jsp`  
│   ├── `css/`  
│   │   └── `style.css`  
│   └── `WEB-INF/`  
│       ├── `web.xml`  
│       └── `lib/` *(optional)*  
└── `README.md`  

---

## 🌐 How It Works

1. User loads **index.jsp**, which includes a password input and displays strength feedback.  
2. As the user types, JavaScript dynamically updates the strength meter with colors and labels.  
3. When the form is submitted, the `PasswordStrengthServlet` evaluates the password server-side and forwards results back to **index.jsp** for display.  
4. The servlet supports redirecting GET requests back to the form page for initial load.

---

## 🎨 UI Snapshot (Design Overview)

- Clean container with rounded corners and subtle shadow.  
- Gradient background with soothing blue and purple tones.  
- Password input field styled for clarity and focus.  
- Animated strength bar changes width and color based on strength.  
- Text labels indicate password and strength category in real time.

---

## ▶️ Running the Project

1. Import the project into **Eclipse** as a Dynamic Web Project.  
2. Configure **Apache Tomcat 10+** as the server runtime.  
3. Build and deploy the project on Tomcat.  
4. Open a browser and visit:  
   `http://localhost:8080/PasswordStrengthChecker/`  
5. Enter a password and see live feedback or submit the form for server-side evaluation.

---

## 🧪 Example Usage

| User Action                      | Effect                                 | UI Feedback                       |
|---------------------------------|---------------------------------------|---------------------------------|
| User types "pass123"             | Password strength evaluated dynamically | Strength bar shows "Weak"        |
| User adds uppercase & symbols   | Strength increases dynamically         | Strength bar updates to "Strong" |
| User submits form with password | Servlet evaluates and displays strength | Page shows server-verified strength |
| User refreshes or GET request   | Redirects to clean input form           | Form ready for new input          |

---

## 🙋‍♀️ Author

Developed by: **Rohini363**  
GitHub Repo: [Click here](https://github.com/Rohini363/PasswordStrengthChecker)
