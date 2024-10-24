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
    xhr.open('GET', pageAddress , true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById('content').innerHTML = xhr.responseText;
        }
    };
    xhr.send();
}