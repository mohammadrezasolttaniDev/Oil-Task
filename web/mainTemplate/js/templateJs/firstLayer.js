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