<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body{
background-image: url("images/i.jpg");
 background-repeat: no-repeat;
width: 200px;

height: 400px;
max-width: 400px;
background-size: 120%;

}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
  text-transform: capitalize;
  border: none;
  outline: none;
  color: #000;
}
html {
  overflow-x: hidden;
}
header {
  position: relative;
  z-index: 1;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
}
header .container {
  padding: 1.2rem 9%;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
header .container .logo {
  font-size: 1.5rem;
}
header .container nav {
  display: flex;
  gap: 1rem;
  align-items: center;
}
header .container nav a {
  font-size: 1.2rem;
  padding: 10px 1rem;
}
header .container nav a.active {
  background: #eee;
  transition: 0.5s;
  border-radius: 10px;
}
header .container :is(.bar-icon, .close-icon) {
  font-size: 1.5rem;
  cursor: pointer;
  display: none;
}
header .container .overlay {
  position: fixed;
  inset: 0;
  z-index: 2;
  background: rgba(0, 0, 0, 0.5);
  display: none;
}
header .container .overlay.active {
  display: flex;
}

/* Media query */
@media (width <= 767px) {
  header .container nav {
    position: fixed;
    right: -100%;
    top: 0;
    padding-top: 6rem;
    width: 300px;
    height: 100vh;
    flex-direction: column;
    background: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    z-index: 3;
    transition: right 0.5s;
  }
  header .container nav.active {
    right: 0;
  }
  header .container :is(.bar-icon, .close-icon) {
    display: flex;
  }
  header .container .close-icon {
    position: absolute;
    top: 2rem;
    left: 2rem;
  }
}



</style>














</head>
<body>
<header>
  <div class="container">
   
    <nav>
      <div class="close-icon"><i class="fa-solid fa-xmark"></i></div>
      <a href="productview.jsp" class="active" style=color:red;>View</a>
      <a href="approvedview.jsp" class="active" style=color:red;>Approved</a>
      <a href="qualitylog.jsp" class="active" style=color:red;>Logout</a>
    </nav>
    <div class="bar-icon"><i class="fa-solid fa-bars"></i></div>
    <div class="overlay"></div>
  </div>
</header>
<script type="text/javascript">

const navItem = document.querySelector("header .container nav");
const items = document.querySelectorAll("header .container nav a");
const barIcon = document.querySelector(".bar-icon");
const closeIcon = document.querySelector(".close-icon");
const overlay = document.querySelector(".overlay");

items.forEach((item) => {
  item.addEventListener("click", () => {
    items.forEach((item) => {
      item.classList.remove("active");
    });
  });
  item.addEventListener("click", () => {
    item.classList.add("active");
  });
});

barIcon.addEventListener("click", () => {
  navItem.classList.toggle("active");
  overlay.classList.toggle("active");
});

closeIcon.addEventListener("click", () => {
  navItem.classList.toggle("active");
  overlay.classList.toggle("active");
});

overlay.addEventListener("click", () => {
  navItem.classList.toggle("active");
  overlay.classList.toggle("active");
});














</script>














</body>
</html>