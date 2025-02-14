var sidebar = document.getElementById('sidebar');
var content = document.getElementById('content');
var searchContainer = document.getElementById('searchContainer');
var toggleSidebar = document.getElementById('toggleSidebar');
var searchInput = document.getElementById('searchInput');
var menuItems = document.getElementById('menuItems').getElementsByTagName('a');

toggleSidebar.addEventListener('click', function () {
    sidebar.classList.toggle('collapsed');
    if (sidebar.classList.contains('collapsed')) {
        content.style.marginRight = '60px';
        searchContainer.style.display = 'none';
    } else {
        content.style.marginRight = '210px';
        searchContainer.style.display = 'block';
    }
});

// Show the search box by default when the page loads
window.addEventListener('load', function () {
    searchContainer.style.display = 'block';
});

// JavaScript for filtering search results
searchInput.addEventListener('keyup', function () {
    var filter = searchInput.value.toUpperCase();
    for (var i = 0; i < menuItems.length; i++) {
        var a = menuItems[i];
        var txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            menuItems[i].style.display = "";
        } else {
            menuItems[i].style.display = "none";
        }
    }
});

function closeDiv() {
    var contentdocumentDiv = document.getElementById("content");
    var tabpennel = document.getElementById("tab");
    contentdocumentDiv.style.visibility = 'hidden';
    tabpennel.style.visibility = 'hidden';
}

function changeNavbar(evt, partName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(partName).style.display = "block";
    evt.currentTarget.className += " active";
}

function loadContent(pageAddress) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', pageAddress, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById('content').innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}

document.addEventListener("DOMContentLoaded", function () {
    const menuItems = document.querySelectorAll("#menuItems .nav-link");

    menuItems.forEach(item => {
        item.addEventListener("click", function () {
            menuItems.forEach(link => link.classList.remove("active"));
            this.classList.add("active");
        });
    });
});

// function updateClock() {
//     var now = new Date();
//     var hours = now.getHours().toString().padStart(2, '0');
//     var minutes = now.getMinutes().toString().padStart(2, '0');
//     var seconds = now.getSeconds().toString().padStart(2, '0');
//     document.getElementById('clock').innerHTML = `${hours}:${minutes}:${seconds}`;
// }
//
// setInterval(updateClock, 1000);

// افزودن تسک
function addTask() {
    var taskText = document.getElementById('newTask').value;
    if (taskText) {
        var li = document.createElement('li');
        li.innerHTML = `<input type="checkbox"> ${taskText}`;
        document.getElementById('tasks').appendChild(li);
        document.getElementById('newTask').value = '';
    }
}

// تنظیم تاریخ شمسی
function setTodayDate() {
    var date = new Date().toLocaleDateString('fa-IR');
    document.getElementById('todayDate').innerText = date;
}

setTodayDate();

// Get the modal
function aclic() {
    var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
//     var img = document.getElementById("myImg");
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");

    modal.style.display = "block";
    modalImg.src = "../logo.png";
    alt = "Snow"
    captionText.innerHTML = this.alt;
    console.log("sdasdasdasd")
    var span = document.getElementsByClassName("close")[0];
    span.onclick = function () {
        modal.style.display = "none";
    }
}

const span = document.querySelector('.marquee span');
span.style.animation = `marquee 20s linear infinite`;
setInterval(() => {
    span.style.animation = 'none';
    setTimeout(() => {
        span.style.animation = `marquee 20s linear infinite`;
    }, 20);
}, 20000);

// function loadContentDiv(id,pageAddress) {
//     console.log(id);
//     var xhr = new XMLHttpRequest();
//     xhr.open('GET', pageAddress, true);
//     xhr.onreadystatechange = function () {
//         if (xhr.readyState === 4 && xhr.status === 200) {
//             document.getElementById('calenderr').innerHTML = xhr.responseText;
//         }
//     };
//     xhr.send();
// }
// document.addEventListener('DOMContentLoaded', function() {
//     let currentIndex = 0;
//     const slides = document.querySelectorAll('.slide');
//     const slideCount = slides.length;
//
//     function showNextSlide() {
//         currentIndex = (currentIndex + 1) % slideCount;
//         const newTransform = `translateX(-${currentIndex * 100}%)`;
//         document.querySelector('.slides').style.transform = newTransform;
//     }
//
//     setInterval(showNextSlide, 2000);
// });

// Get the <span> element that closes the modal

// When the user clicks on <span> (x), close the modal


